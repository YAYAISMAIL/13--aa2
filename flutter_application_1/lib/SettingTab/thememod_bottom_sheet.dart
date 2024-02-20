import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/app_config_provider.dart';
import 'package:flutter_application_1/my_theam.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class themeModeBottomSheet extends StatefulWidget {
  const themeModeBottomSheet({super.key});

  @override
  State<themeModeBottomSheet> createState() => _themeModeBottomSheetState();
}

class _themeModeBottomSheetState extends State<themeModeBottomSheet> {
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
            provider.changeTheme(ThemeMode.dark);
          },
          child: provider.isDarkMode()
              ? getSelectedItemWidget(AppLocalizations.of(context)!.dark_mode)
              : getUnselectedItemWidget(
                  AppLocalizations.of(context)!.dark_mode),
        ),
        const SizedBox(height: 10),
        InkWell(
          onTap: () {
            provider.changeTheme(ThemeMode.light);
          },
          child: provider.isDarkMode()
              ? getUnselectedItemWidget(
                  AppLocalizations.of(context)!.light_mode)
              : getSelectedItemWidget(AppLocalizations.of(context)!.light_mode),
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
