import 'package:flutter/material.dart';
import 'package:flutter_application_1/HadeathTab/hadeath_tab.dart';
import 'package:flutter_application_1/Provider/app_config_provider.dart';
import 'package:flutter_application_1/QuranTab/quran_tab.dart';
import 'package:flutter_application_1/Radio/radio_tab.dart';
import 'package:flutter_application_1/Sebha/sebha_tab.dart';
import 'package:flutter_application_1/SettingTab/Setting.dart';
import 'package:flutter_application_1/my_theam.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home_Screen';

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //Tab Current Index:-
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Stack(
      children: [
        provider.isDarkMode()
            ? Image.asset('assets/img/DarkBackGround.png',
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill)
            : Image.asset('assets/img/background.png',
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill),
        Scaffold(
            appBar: AppBar(
                title: Text(AppLocalizations.of(context)!.app_title,
                    style: provider.isDarkMode()
                        ? const TextStyle(color: MyTheme.white)
                        : const TextStyle(color: MyTheme.black))),
            body: tabs[index],
            bottomNavigationBar: Theme(
                data: Theme.of(context)
                    .copyWith(canvasColor: Theme.of(context).primaryColor),
                child: BottomNavigationBar(
                    type: BottomNavigationBarType.shifting,
                    onTap: (value) {
                      index = value;
                      setState(() {});
                    },
                    currentIndex: index,
                    items: [
                      BottomNavigationBarItem(
                          icon: const ImageIcon(
                              AssetImage('assets/Icons/radio.png')),
                          label: AppLocalizations.of(context)!.radio),
                      BottomNavigationBarItem(
                          icon: const ImageIcon(
                              AssetImage('assets/Icons/sebha.png')),
                          label: AppLocalizations.of(context)!.sebha),
                      BottomNavigationBarItem(
                          icon: const ImageIcon(AssetImage(
                              'assets/Icons/quran-quran-svgrepo-com.png')),
                          label: AppLocalizations.of(context)!.hadeath),
                      BottomNavigationBarItem(
                          icon: const ImageIcon(
                              AssetImage('assets/Icons/quran.png')),
                          label: AppLocalizations.of(context)!.quran),
                      BottomNavigationBarItem(
                          icon: const Icon(Icons.settings),
                          label: AppLocalizations.of(context)!.setting),
                    ])))
      ],
    );
  }

  //List of Tabs:-
  List<Widget> tabs = [
    const RadioTab(),
    const SebhaTab(),
    const HadeathTab(),
    QuranTab(),
    const SettingsTab()
  ];
}
