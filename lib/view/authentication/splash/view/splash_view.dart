import 'package:flutter/material.dart';
import 'package:project_template/view/authentication/splash/viewmodel/splash_viewmodel.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    SplashViewmodel().navigateToCheckScreen();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('THIS IS SPLASH VIEW'),
      ),
    );
  }
}
