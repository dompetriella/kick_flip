import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kick_flip/app/models/room.dart';
import 'package:kick_flip/app/state/current_game_state.dart';
import 'package:kick_flip/main.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'rooms_stream.g.dart';

@riverpod
Stream<List<Room>> roomsStream(RoomsStreamRef ref) async* {
  Room? room = ref.watch(currentGameStateProvider).room;
  if (room != null) {
    final stream = supabase
        .from('rooms')
        .stream(primaryKey: ['id'])
        .eq('id', room.roomId)
        .asBroadcastStream();

    yield* stream.map(
        (jsonList) => jsonList.map((json) => Room.fromJson(json)).toList());
  }
}
