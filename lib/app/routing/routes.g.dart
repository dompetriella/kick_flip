// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homePageRoute,
      $clickEmRoute,
      $testJoinRoute,
    ];

RouteBase get $homePageRoute => GoRouteData.$route(
      path: '/',
      factory: $HomePageRouteExtension._fromState,
    );

extension $HomePageRouteExtension on HomePageRoute {
  static HomePageRoute _fromState(GoRouterState state) => const HomePageRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $clickEmRoute => GoRouteData.$route(
      path: '/clickem',
      factory: $ClickEmRouteExtension._fromState,
    );

extension $ClickEmRouteExtension on ClickEmRoute {
  static ClickEmRoute _fromState(GoRouterState state) => const ClickEmRoute();

  String get location => GoRouteData.$location(
        '/clickem',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $testJoinRoute => GoRouteData.$route(
      path: '/test_join',
      factory: $TestJoinRouteExtension._fromState,
    );

extension $TestJoinRouteExtension on TestJoinRoute {
  static TestJoinRoute _fromState(GoRouterState state) => const TestJoinRoute();

  String get location => GoRouteData.$location(
        '/test_join',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
