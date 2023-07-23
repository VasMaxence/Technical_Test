import 'package:auto_route/auto_route.dart';
import 'package:linxo_test/src/config/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  AppRouter({super.navigatorKey});

  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true, path: "/app"),
        RedirectRoute(path: "*", redirectTo: "/app"),
      ];
}
