import 'package:flutter/material.dart';
import 'package:flutter_application_1/HadeathTab/set_hadeath_item.dart';
import 'package:flutter_application_1/Provider/app_config_provider.dart';
import 'package:flutter_application_1/my_theam.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HadeathTab extends StatelessWidget {
  const HadeathTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Center(
        child: Column(children: [
      Image.asset('assets/img/ahadeth_image.png'),
      Divider(
          thickness: 2,
          color: provider.isDarkMode()
              ? MyTheme.priamaryDarkFont
              : MyTheme.primary),
      Text(AppLocalizations.of(context)!.hadeath,
          style: Theme.of(context).textTheme.titleMedium),
      Divider(
          thickness: 2,
          color: provider.isDarkMode()
              ? MyTheme.priamaryDarkFont
              : MyTheme.primary),
      Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) =>
                  SetHadeathItem(numberOfHadeath: index),
              separatorBuilder: (context, index) => Divider(
                  thickness: 2,
                  color: provider.isDarkMode()
                      ? MyTheme.priamaryDarkFont
                      : MyTheme.primary),
              itemCount: 50))
    ]));
  }
}
