import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../../../../core/base/state/base_state.dart';
import '../../../../core/components/text/locale_text.dart';
import '../../../../view/authentication/showcase/viewmodel/showcase_viewmodel.dart';

class ShowcaseView extends StatefulWidget {
  const ShowcaseView({Key? key}) : super(key: key);

  @override
  _ShowcaseViewState createState() => _ShowcaseViewState();
}

class _ShowcaseViewState extends BaseState<ShowcaseView> {
  late ShowcaseViewmodel viewModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LocaleText(
          LocaleKeys.greetings,
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (context.locale == AppConstants.trLocale) {
                  context.setLocale(AppConstants.enLocale);
                } else {
                  context.setLocale(AppConstants.trLocale);
                }
              });
            },
            icon: const Icon(
              Icons.change_history,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LocaleText(
              LocaleKeys.greetings,
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: Theme.of(context).textTheme.headline3!.color,
                  ),
            ),
            Consumer<ShowcaseViewmodel>(
              builder: (_, ShowcaseViewmodel viewmodel, __) => Text(
                '${viewmodel.counter}',
                style: Theme.of(context).textTheme.headline1!.copyWith(
                    color: Theme.of(context).textTheme.headline3!.color),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            context.read<ShowcaseViewmodel>().incrementCounter(context),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
