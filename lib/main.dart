import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';
import 'package:auto_route/auto_route.dart';
import 'package:project_template/core/init/cache/locale_manager.dart';
import 'package:provider/provider.dart';
import 'view/authentication/showcase/viewmodel/showcase_viewmodel.dart';
import 'core/constants/app_constants.dart';
import 'core/init/notifier/theme_notifier.dart';
import 'core/init/navigation/router.gr.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.removeAfter(initialization);

  await EasyLocalization.ensureInitialized();
  getIt.registerSingleton<AppRouter>(AppRouter());
  LocaleManager.preferencesInit();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ShowcaseViewmodel>(
          create: (_) => ShowcaseViewmodel(),
        ),
        ChangeNotifierProvider<ThemeNotifier>(
          create: (context) => ThemeNotifier(),
        ),
      ],
      child: EasyLocalization(
        child: const MyApp(),
        supportedLocales: AppConstants.supportedLocales,
        path: AppConstants.LANG_ASSET_PATH,
        fallbackLocale: AppConstants.enLocale,
      ),
    ),
  );
}

Future initialization(BuildContext? context) async {
  await Future.delayed(const Duration(seconds: 1));
}

final getIt = GetIt.instance;

final router = getIt<AppRouter>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: ((context, value, child) {
        return MaterialApp.router(
          routerDelegate: AutoRouterDelegate(router),
          routeInformationParser: router.defaultRouteParser(),
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          title: 'Flutter Demo',
          theme: value.currentTheme,
        );
      }),
    );
  }
}
