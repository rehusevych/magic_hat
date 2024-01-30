// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:magic_hat_task/presentation/navigation/navigation.dart' as _i3;
import 'package:magic_hat_task/presentation/router/wrapper/authenticated_wrapper.dart'
    as _i2;
import 'package:magic_hat_task/presentation/splash/splash_page.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    AuthenticatedWrapperRouter.name: (routeData) {
      return _i4.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.AuthenticatedWrapperPage(),
        transitionsBuilder: _i4.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    NavigationRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.NavigationPage(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          SplashRoute.name,
          path: '/splash-page',
        ),
        _i4.RouteConfig(
          AuthenticatedWrapperRouter.name,
          path: '/',
          children: [
            _i4.RouteConfig(
              NavigationRoute.name,
              path: '',
              parent: AuthenticatedWrapperRouter.name,
            )
          ],
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/splash-page',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.AuthenticatedWrapperPage]
class AuthenticatedWrapperRouter extends _i4.PageRouteInfo<void> {
  const AuthenticatedWrapperRouter({List<_i4.PageRouteInfo>? children})
      : super(
          AuthenticatedWrapperRouter.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'AuthenticatedWrapperRouter';
}

/// generated route for
/// [_i3.NavigationPage]
class NavigationRoute extends _i4.PageRouteInfo<void> {
  const NavigationRoute()
      : super(
          NavigationRoute.name,
          path: '',
        );

  static const String name = 'NavigationRoute';
}
