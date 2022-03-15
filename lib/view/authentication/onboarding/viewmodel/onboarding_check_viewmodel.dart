import 'package:project_template/core/constants/enums/preferences_keys_enum.dart';
import 'package:project_template/core/init/cache/locale_manager.dart';
import 'package:project_template/main.dart';
import '../../../../core/init/navigation/router.gr.dart';

class OnboardingCheckViewModel {
  Future checkFirstSeen() async {
    bool _isFirstSeen =
        LocaleManager.instance.getBoolValue(PreferencesKeys.IS_FIRST_SEEN);
    if (!_isFirstSeen) {
      router.push(const OnboardingRoute());
      await LocaleManager.instance
          .setBoolValue(PreferencesKeys.IS_FIRST_SEEN, !_isFirstSeen);
    } else {
      router.pushAndPopUntil(const ShowcaseRoute(), predicate: (_) => false);
    }
  }
}
