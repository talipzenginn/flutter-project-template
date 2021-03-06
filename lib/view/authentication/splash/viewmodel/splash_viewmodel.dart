import '../../../../core/init/navigation/router.gr.dart';
import '../../../../main.dart';

class SplashViewmodel{
  void navigateToCheckScreen(){
    Future.delayed(
      const Duration(seconds: 1),
    ).then(
      (value) => router.push(
        const OnboardingCheckRoute(),
      ),
    );
  }
}