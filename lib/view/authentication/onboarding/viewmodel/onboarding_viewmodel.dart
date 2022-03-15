import '../../../../core/init/navigation/router.gr.dart';
import '../../../../main.dart';

class OnboardingViewmodel {
  void onDone() {
    router.pushAndPopUntil(const ShowcaseRoute(),predicate: (_)=>false);
  }
}
