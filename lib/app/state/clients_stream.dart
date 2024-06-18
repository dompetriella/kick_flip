import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kick_flip/app/models/client.dart';
import 'package:kick_flip/main.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'clients_stream.g.dart';

@riverpod
Stream<List<Client>> clientsStream(ClientsStreamRef ref) async* {
  final stream = supabase
      .from('clients')
      .stream(primaryKey: ['id'])
      .eq('room_id', 1)
      .asBroadcastStream();

  yield* stream.map(
      (jsonList) => jsonList.map((json) => Client.fromJson(json)).toList());
}
