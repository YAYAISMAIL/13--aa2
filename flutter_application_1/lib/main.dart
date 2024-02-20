import 'package:flutter/material.dart';
import 'package:flutter_application_1/HadeathTab/hadeath_page.dart';
import 'package:flutter_application_1/Provider/app_config_provider.dart';
import 'package:flutter_application_1/QuranTab/sura_page.dart';
import 'package:flutter_application_1/home_scree.dart';
import 'package:flutter_application_1/my_theam.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppConfigProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //To Access My Provider We need to create an object from the provider

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      title: 'Title on tap',
      debugShowCheckedModeBanner: false,
      theme: MyTheme.myTheme,
      darkTheme: MyTheme.myThemeDark,
      themeMode: provider.appTheme,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraPage.routeName: (context) => SuraPage(),
        HadeathPage.routeName: (context) => const HadeathPage(),
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.appLanguage),
    );
  }
}
