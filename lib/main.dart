import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:portfolio/modules/Home/home.dart';
import 'package:portfolio/modules/home/view_model/locale_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'l10n/l10n.dart';
import 'locator.dart';
import 'core/utils/theme.dart';
import 'modules/home/view_model/home_provider.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeProvider>(create: (_) => HomeProvider()),
        ChangeNotifierProvider<AppTheme>(create: (_) => AppTheme()),
        ChangeNotifierProvider<LocaleProvider>(create: (_) => LocaleProvider()),
      ],
      child: Consumer2<AppTheme, LocaleProvider>(
        builder: (context, theme, locale, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Portfolio',
            darkTheme: AppTheme.dark(),
            theme: AppTheme.light(),
            themeMode: theme.currentTheme,
            locale: locale.locale,
            supportedLocales: L10n.all,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            home: const Home(),
          );
        },
      ),
    );
  }
}
