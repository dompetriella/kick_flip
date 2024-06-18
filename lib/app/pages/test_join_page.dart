import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kick_flip/app/models/client.dart';
import 'package:kick_flip/app/routing/routes.dart';
import 'package:kick_flip/app/state/clients_stream.dart';

class TestJoinPage extends ConsumerWidget {
  const TestJoinPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<Client>> clientStream = ref.watch(clientsStreamProvider);
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
          child: Center(
            child: switch (clientStream) {
              AsyncValue(:final valueOrNull?) => Center(
                    child: Wrap(
                  children: [
                    ...valueOrNull.map((client) => PlayerTag(client: client)),
                  ],
                )),
              AsyncValue(:final error?) => Text('Error: $error'),
              _ => const CircularProgressIndicator(),
            },
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
