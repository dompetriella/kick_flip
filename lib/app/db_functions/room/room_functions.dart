import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kick_flip/app/models/room.dart';
import 'package:kick_flip/app/state/current_game_state.dart';
import 'package:kick_flip/main.dart';
import 'package:uuid/uuid.dart';

String _createRoomCode() {
  String guid = Uuid().v4();
  String roomCode = guid.substring(0, 6);
  return roomCode.toUpperCase();
}

Future createNewRoom(WidgetRef ref) async {
  String roomCode = _createRoomCode();
  var response = await supabase
      .from('rooms')
      .insert({'room_code': roomCode})
      .select()
      .count();
  var data = Room.fromJson(response.data[0]);
  ref.read(currentGameStateProvider.notifier).setCurrentRoom(data);
}
