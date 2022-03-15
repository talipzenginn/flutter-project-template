import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import '../viewmodel/onboarding_check_viewmodel.dart';

class OnboardingCheckView extends StatefulWidget {
  const OnboardingCheckView({Key? key}) : super(key: key);

  @override
  State<OnboardingCheckView> createState() => _OnboardingCheckViewState();
}

class _OnboardingCheckViewState extends State<OnboardingCheckView>
    with AfterLayoutMixin<OnboardingCheckView> {
  late OnboardingCheckViewModel onboardingCheckViewModel;
  @override
  void initState() {
    onboardingCheckViewModel = OnboardingCheckViewModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('THIS IS CHECK'),
      ),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    onboardingCheckViewModel.checkFirstSeen();
  }
}
