import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kick_flip/app/models/room.dart';
import 'package:kick_flip/app/state/current_game_state.dart';
import 'package:kick_flip/main.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:uuid/uuid.dart';

String _createRoomCode() {
  String guid = Uuid().v4();
  String roomCode = guid.substring(0, 6);
  return roomCode.toUpperCase();
}

Future createNewRoom(WidgetRef ref) async {
  String roomCode = _createRoomCode();
  PostgrestResponse<List<Map<String, dynamic>>>? response;
  print("trying with select");
  try {
    response = await supabase
        .from('rooms')
        .insert({'room_code': roomCode})
        .select('*')
        .count();
  } catch (e) {
    print('Failure to reach db, Error: ${e.toString()}');
  }

  if (response != null) {
    Map<String, dynamic>? data = response.data.firstOrNull;
    if (data != null) {
      ref
          .read(currentGameStateProvider.notifier)
          .setCurrentRoom(Room.fromJson(data));
    } else {
      print("Data as list returned from db as list of NULL");
    }
  } else {
    print('Response return null- No tables returned');
  }
}

Future createNewRoomWithoutSelecct(WidgetRef ref) async {
  String roomCode = _createRoomCode();
  PostgrestResponse<List<Map<String, dynamic>>>? response;
  print('trying without select');
  try {
    response = await supabase.from('rooms').insert({'room_code': roomCode});
  } catch (e) {
    print('Failure to reach db, Error: ${e.toString()}');
  }

  if (response != null) {
    Map<String, dynamic>? data = response.data.firstOrNull;
    if (data != null) {
      print(data);
    } else {
      print("Data as list returned from db as list of NULL");
    }
  } else {
    print('Response return null- No tables returned');
  }
}
