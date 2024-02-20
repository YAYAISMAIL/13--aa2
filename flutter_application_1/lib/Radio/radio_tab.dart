import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/app_config_provider.dart';
import 'package:flutter_application_1/my_theam.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
            child: Image.asset('assets/img/radio_image.png')),
        Container(
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(AppLocalizations.of(context)!.radio,
                  style: Theme.of(context).textTheme.titleMedium),
            ],
          ),
        ),
        Container(
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: FaIcon(FontAwesomeIcons.backward,
                      color: provider.isDarkMode()
                          ? MyTheme.priamaryDarkFont
                          : MyTheme.primary)),
              SizedBox(width: MediaQuery.of(context).size.width * 0.10),
              IconButton(
                  onPressed: () {},
                  icon: FaIcon(
                    FontAwesomeIcons.play,
                    color: provider.isDarkMode()
                        ? MyTheme.priamaryDarkFont
                        : MyTheme.primary,
                  )),
              SizedBox(width: MediaQuery.of(context).size.width * 0.10),
              IconButton(
                  onPressed: () {},
                  icon: FaIcon(FontAwesomeIcons.forward,
                      color: provider.isDarkMode()
                          ? MyTheme.priamaryDarkFont
                          : MyTheme.primary)),
            ],
          ),
        )
      ],
    );
  }
}
