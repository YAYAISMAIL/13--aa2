import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/app_config_provider.dart';
import 'package:flutter_application_1/SettingTab/Language_bottom_sheet.dart';
import 'package:flutter_application_1/SettingTab/thememod_bottom_sheet.dart';
import 'package:flutter_application_1/my_theam.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class SetSettingItem extends StatelessWidget {
  String settingTitle;
  String inetianlSelection;
  int itemIndex;
  SetSettingItem(
      {super.key,
      required this.settingTitle,
      required this.inetianlSelection,
      required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          settingTitle,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(
          height: 10,
        ),
        //Langauage Dropdown
        InkWell(
          onTap: () {
            switch (itemIndex) {
              case 1:
                showLanguageBottomsheet(context);
                break;
              case 2:
                showThemeModeBottomsheet(context);
                break;
              default:
                print("Error");
                break;
            }
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.width * 0.02,
              horizontal: MediaQuery.of(context).size.width * 0.07,
            ),
            decoration: BoxDecoration(
                color: provider.isDarkMode()
                    ? MyTheme.priamaryDarkFont
                    : MyTheme.primary,
                borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.width * 0.075)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    inetianlSelection,
                    style: MyTheme.fs_20,
                  ),
                  const Icon(Icons.arrow_drop_down),
                ]),
          ),
        ),
      ],
    );
  }

  void showLanguageBottomsheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return const LangauageBottomSheet();
        });
  }

  void showThemeModeBottomsheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return const themeModeBottomSheet();
        });
  }
}
