import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/app_config_provider.dart';
import 'package:flutter_application_1/my_theam.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class LangauageBottomSheet extends StatefulWidget {
  const LangauageBottomSheet({super.key});

  @override
  State<LangauageBottomSheet> createState() => _LangauageBottomSheetState();
}

class _LangauageBottomSheetState extends State<LangauageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
      decoration: BoxDecoration(
        color: provider.isDarkMode() ? MyTheme.priamaryDark : MyTheme.white,
      ),
      child: Column(children: [
        InkWell(
          onTap: () {
            provider.changeLanguage('en');
          },
          child: provider.appLanguage == 'en'
              ? getSelectedItemWidget(AppLocalizations.of(context)!.english)
              : getUnselectedItemWidget(AppLocalizations.of(context)!.english),
        ),
        const SizedBox(height: 10),
        InkWell(
          onTap: () {
            provider.changeLanguage('ar');
          },
          child: provider.appLanguage == 'ar'
              ? getSelectedItemWidget(AppLocalizations.of(context)!.arabic)
              : getUnselectedItemWidget(AppLocalizations.of(context)!.arabic),
        ),
      ]),
    );
  }

  //Customization For Selected And Unselectid Items:
  Widget getSelectedItemWidget(String text) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: MyTheme.fs_30.copyWith(
              color: provider.isDarkMode()
                  ? MyTheme.priamaryDarkFont
                  : MyTheme.primary,
              fontWeight: FontWeight.bold),
        ),
        Icon(
          Icons.check,
          color: provider.isDarkMode()
              ? MyTheme.priamaryDarkFont
              : MyTheme.primary,
          size: 35,
        )
      ],
    );
  }

  Widget getUnselectedItemWidget(String text) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: MyTheme.fs_18.copyWith(
            color: provider.isDarkMode() ? MyTheme.white : MyTheme.black,
          ),
        ),
      ],
    );
  }
}
