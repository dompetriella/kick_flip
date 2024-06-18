import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kick_flip/app/db_functions/room/room_functions.dart';
import 'package:kick_flip/app/models/client.dart';
import 'package:kick_flip/app/routing/routes.dart';
import 'package:kick_flip/app/state/clients_stream.dart';
import 'package:kick_flip/app/state/current_game_state.dart';

class TestJoinPage extends ConsumerWidget {
  const TestJoinPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<Client>> clientStream = ref.watch(clientsStreamProvider);
    var currentGameState = ref.watch(currentGameStateProvider);
    var currentGameStateActions = ref.watch(currentGameStateProvider.notifier);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              IconButton(
                  onPressed: () {
                    HomePageRoute().go(context);
                  },
                  icon: Icon(Icons.home)),
              SizedBox(
                width: 8,
              ),
              Text('Test Join Page'),
            ],
          ),
        ),
        body: Container(
          color: Theme.of(context).colorScheme.primary,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    await createNewRoom(ref);
                  },
                  child: Text('Create New Room')),
              SizedBox(
                height: 16,
              ),
              Text(
                'Room Code:',
                style:
                    TextStyle(color: Theme.of(context).colorScheme.onPrimary),
              ),
              Text(
                currentGameState.room?.roomCode ?? '',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontSize: 64),
              ),
              SizedBox(
                height: 64,
              ),
              Center(
                child: switch (clientStream) {
                  AsyncValue(:final valueOrNull?) => Center(
                        child: Column(
                      children: [
                        Text(
                          'Players:',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onPrimary),
                        ),
                        Wrap(
                          children: [
                            ...valueOrNull
                                .map((client) => PlayerTag(client: client)),
                          ],
                        ),
                      ],
                    )),
                  AsyncValue(:final error?) => Text('Error: $error'),
                  _ => const CircularProgressIndicator(),
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PlayerTag extends StatelessWidget {
  final Client client;
  const PlayerTag({super.key, required this.client});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Theme.of(context).colorScheme.onPrimary,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            client.clientUsername,
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
        ),
      ),
    );
  }
}
