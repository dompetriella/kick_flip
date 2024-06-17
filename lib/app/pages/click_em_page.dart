import 'package:flutter/material.dart';
import 'package:kick_flip/app/routing/routes.dart';

class ClickEmPage extends StatelessWidget {
  const ClickEmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Theme.of(context).colorScheme.primary,
          child: Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  onPressed: () => HomePageRoute().go(context),
                  child: Text('return home'))),
        ),
      ),
    );
  }
}
