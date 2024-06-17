import 'package:flutter/material.dart';
import 'package:kick_flip/app/pages/test_join_page.dart';
import 'package:kick_flip/app/routing/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Theme.of(context).colorScheme.tertiary,
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // ElevatedButton(
              //     style: ElevatedButton.styleFrom(
              //         shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(5))),
              //     onPressed: () => ClickEmRoute().go(context),
              //     child: Text('click em game')),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  onPressed: () => TestJoinRoute().go(context),
                  child: Text('test join page')),
            ],
          )),
        ),
      ),
    );
  }
}
