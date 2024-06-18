import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kick_flip/app/models/room.dart';
import 'package:kick_flip/main.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'rooms_stream.g.dart';

@riverpod
Stream<List<Room>> roomsStream(RoomsStreamRef ref) async* {
  final stream =
      supabase.from('rooms').stream(primaryKey: ['id']).asBroadcastStream();

  yield* stream
      .map((jsonList) => jsonList.map((json) => Room.fromJson(json)).toList());
}
