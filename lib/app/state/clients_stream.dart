import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kick_flip/app/models/client.dart';
import 'package:kick_flip/app/models/room.dart';
import 'package:kick_flip/app/state/current_game_state.dart';
import 'package:kick_flip/main.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'clients_stream.g.dart';

@riverpod
Stream<List<Client>> clientsStream(ClientsStreamRef ref) async* {
  Room? room = ref.watch(currentGameStateProvider).room;
  if (room != null) {
    final stream = supabase
        .from('clients')
        .stream(primaryKey: ['id'])
        .eq('room_code', room.roomCode)
        .asBroadcastStream();

    if (await stream.isEmpty) {
      print('Data from db has returned empty');
    }

    yield* stream.map(
        (jsonList) => jsonList.map((json) => Client.fromJson(json)).toList());
  }
}
