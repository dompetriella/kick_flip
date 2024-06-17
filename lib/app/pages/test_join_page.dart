import 'package:flutter/material.dart';
import 'package:kick_flip/app/routing/routes.dart';

class TestJoinPage extends StatelessWidget {
  const TestJoinPage({super.key});

  @override
  Widget build(BuildContext context) {
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
        ),
      ),
    );
  }
}
