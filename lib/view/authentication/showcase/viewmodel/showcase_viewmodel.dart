import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '/main.dart';
import '../../../../core/init/navigation/router.gr.dart';
import '../../../../core/init/network/network_manager.dart';
import '../../../../view/authentication/showcase/model/showcase_model.dart';
import '../../../../core/constants/enums/app_theme_enum.dart';
import '../../../../core/init/notifier/theme_notifier.dart';

class ShowcaseViewmodel with ChangeNotifier {
  int counter = 0;

  void incrementCounter(BuildContext context) async {
    Provider.of<ThemeNotifier>(context, listen: false)
        .changeTheme(AppThemes.RED);
    router.push(const LoginRoute());
    counter++;
    ShowcaseModel response = await NetworkManager.instance!.get(
      '/api/users/2',
      ShowcaseModel.fromJson,
    );
    print(
      jsonEncode(
        response.toJson(),
      ),
    );

    notifyListeners();
  }
}
