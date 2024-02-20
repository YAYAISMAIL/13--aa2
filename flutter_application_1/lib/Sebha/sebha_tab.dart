import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/app_config_provider.dart';
import 'package:flutter_application_1/my_theam.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  //Set Angle of rotation
  int degrees = 1;
  //Set Tasbeah Counter
  int tsbeahCount = 0;

  //Spacer Designe:
  int spacerOne = 3;
  int spacerTwo = 1;
  int spacerThree = 1;
  int spacerFour = 2;
  int spacerFive = 3;

  @override
  Widget build(BuildContext context) {
    //Set tsbeah
    int sebhaIndex = 0;
    List<String> tasbeahString = [
      AppLocalizations.of(context)!.tasbeah1,
      AppLocalizations.of(context)!.tasbeah2,
      AppLocalizations.of(context)!.tasbeah3,
    ];

    //heading Title:
    String headingTitle = AppLocalizations.of(context)!.tasbeh_Count;

    var provider = Provider.of<AppConfigProvider>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Spacer(flex: spacerOne),
            //ٍSebha Structure :-
            Container(
              height: 310,
              //decoration: BoxDecoration(border: Border.all(width: 1)),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.15),
                          //decoration: BoxDecoration(border: Border.all(width: 1)),
                          child: provider.isDarkMode()
                              ? Image.asset('assets/img/dark_head_of_seb7a.png')
                              : Image.asset('assets/img/head_sebha_logo.png')),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        //decoration: BoxDecoration(border: Border.all(width: 1)),
                        child: Transform.rotate(
                            angle: degrees * (3.14 / 180),
                            child: provider.isDarkMode()
                                ? Image.asset(
                                    'assets/img/dark_body_of_seb7a.png')
                                : Image.asset(
                                    'assets/img/body_sebha_logo.png')),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Spacer(flex: spacerTwo),
            //Title Under Sebha Image:-
            Text(
              headingTitle,
              style: MyTheme.fs_25.copyWith(
                  color: provider.isDarkMode() ? MyTheme.white : MyTheme.black),
            ),
            Spacer(flex: spacerThree),
            //Tasbeh Counter Viewer :-
            Container(
                decoration: BoxDecoration(
                    color: provider.isDarkMode()
                        ? MyTheme.priamaryDark
                        : MyTheme.primary,
                    border: Border.all(
                        color: provider.isDarkMode()
                            ? MyTheme.priamaryDarkFont
                            : MyTheme.black),
                    borderRadius: BorderRadius.circular(25)),
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.08,
                    vertical: MediaQuery.of(context).size.height * 0.03),
                child: Text(
                  '$tsbeahCount',
                  style: MyTheme.fs_25.copyWith(
                      color: provider.isDarkMode()
                          ? MyTheme.white
                          : MyTheme.black),
                )),
            Spacer(flex: spacerFour),
            //Clickable Button:-
            ElevatedButton(
                onPressed: () {
                  degrees += 10;
                  tsbeahCount++;
                  if (tsbeahCount == 33) {
                    tsbeahCount = 0;
                    sebhaIndex++;
                    if (sebhaIndex == 3) {
                      sebhaIndex = 0;
                    }
                  }
                  setState(() {});
                },
                style: ButtonStyle(
                    backgroundColor: provider.isDarkMode()
                        ? const MaterialStatePropertyAll(
                            MyTheme.priamaryDarkFont)
                        : const MaterialStatePropertyAll(MyTheme.primary),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)))),
                child: Text(tasbeahString[sebhaIndex],
                    style: MyTheme.fs_20.apply(
                        color: provider.isDarkMode()
                            ? MyTheme.black
                            : MyTheme.white))),

            Spacer(flex: spacerFive),
          ],
        ),
      ],
    );
  }
}
