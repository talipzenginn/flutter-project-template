// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:project_template/view/authentication/login/login_view.dart'
    as _i3;
import 'package:project_template/view/authentication/onboarding/view/onboarding_check_view.dart'
    as _i4;
import 'package:project_template/view/authentication/onboarding/view/onboarding_view.dart'
    as _i5;
import 'package:project_template/view/authentication/showcase/view/showcase_view.dart'
    as _i2;
import 'package:project_template/view/authentication/splash/view/splash_view.dart'
    as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.SplashView());
    },
    ShowcaseRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.ShowcaseView());
    },
    LoginRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.LoginView());
    },
    OnboardingCheckRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.OnboardingCheckView());
    },
    OnboardingRoute.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.OnboardingView());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashRoute.name, path: '/'),
        _i6.RouteConfig(ShowcaseRoute.name, path: '/showcase-view'),
        _i6.RouteConfig(LoginRoute.name, path: '/login-view'),
        _i6.RouteConfig(OnboardingCheckRoute.name,
            path: '/onboarding-check-view'),
        _i6.RouteConfig(OnboardingRoute.name, path: '/onboarding-view')
      ];
}

/// generated route for
/// [_i1.SplashView]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.ShowcaseView]
class ShowcaseRoute extends _i6.PageRouteInfo<void> {
  const ShowcaseRoute() : super(ShowcaseRoute.name, path: '/showcase-view');

  static const String name = 'ShowcaseRoute';
}

/// generated route for
/// [_i3.LoginView]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-view');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i4.OnboardingCheckView]
class OnboardingCheckRoute extends _i6.PageRouteInfo<void> {
  const OnboardingCheckRoute()
      : super(OnboardingCheckRoute.name, path: '/onboarding-check-view');

  static const String name = 'OnboardingCheckRoute';
}

/// generated route for
/// [_i5.OnboardingView]
class OnboardingRoute extends _i6.PageRouteInfo<void> {
  const OnboardingRoute()
      : super(OnboardingRoute.name, path: '/onboarding-view');

  static const String name = 'OnboardingRoute';
}
