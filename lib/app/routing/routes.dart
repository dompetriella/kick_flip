import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:kick_flip/app/pages/click_em_page.dart';
import 'package:kick_flip/app/pages/home_page.dart';
import 'package:kick_flip/app/pages/test_join_page.dart';

part 'routes.g.dart';

@TypedGoRoute<HomePageRoute>(
  path: '/',
)
class HomePageRoute extends GoRouteData {
  const HomePageRoute();
  static const path = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}

@TypedGoRoute<ClickEmRoute>(
  path: '/clickem',
)
class ClickEmRoute extends GoRouteData {
  const ClickEmRoute();
  static const path = '/clickem';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ClickEmPage();
}

@TypedGoRoute<TestJoinRoute>(
  path: '/test_join',
)
class TestJoinRoute extends GoRouteData {
  const TestJoinRoute();
  static const path = '/test_join';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const TestJoinPage();
}
