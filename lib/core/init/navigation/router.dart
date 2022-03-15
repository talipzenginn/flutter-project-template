import 'package:auto_route/auto_route.dart';
import 'package:project_template/view/authentication/onboarding/view/onboarding_view.dart';
import 'package:project_template/view/authentication/splash/view/splash_view.dart';
import '../../../view/authentication/login/login_view.dart';
import '../../../view/authentication/onboarding/view/onboarding_check_view.dart';
import '../../../view/authentication/showcase/view/showcase_view.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashView, initial: true),
    AutoRoute(page: ShowcaseView),
    AutoRoute(page: LoginView),
    AutoRoute(page: OnboardingCheckView),
    AutoRoute(page: OnboardingView),
  ],
)
class $AppRouter {}
