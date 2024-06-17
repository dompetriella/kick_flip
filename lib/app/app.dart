import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:kick_flip/app/routing/router.dart';
import 'package:kick_flip/app/theme.dart';
import 'package:kick_flip/app/routing/routes.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late final GoRouter router = GoRouter(routes: $appRoutes);
    return MaterialApp.router(
      title: 'App',
      themeMode: ThemeMode.light,
      theme: lightTheme,
      routerConfig: ref.watch(routerProvider),
    );
  }
}
