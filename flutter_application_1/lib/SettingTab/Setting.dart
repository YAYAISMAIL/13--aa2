import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/app_config_provider.dart';
import 'package:flutter_application_1/SettingTab/set_setting_ttem.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

//Spacer Designe:
int spacerOne = 2;
int spacerTwo = 1;
int spacerThree = 7;

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.width * 0.02,
        horizontal: MediaQuery.of(context).size.width * 0.05,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Spacer(flex: spacerOne),
        //Language Title
        SetSettingItem(
            settingTitle: AppLocalizations.of(context)!.language,
            inetianlSelection: (provider.appLanguage == "en")
                ? AppLocalizations.of(context)!.english
                : AppLocalizations.of(context)!.arabic,
            itemIndex: 1),
        Spacer(flex: spacerOne),
        //Mod Title
        SetSettingItem(
            settingTitle: AppLocalizations.of(context)!.app_mode,
            inetianlSelection: provider.isDarkMode()
                ? AppLocalizations.of(context)!.dark_mode
                : AppLocalizations.of(context)!.light_mode,
            itemIndex: 2),
        Spacer(flex: spacerThree)
      ]),
    );
  }
}
