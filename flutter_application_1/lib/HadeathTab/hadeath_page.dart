import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/HadeathTab/set_hadeath_item.dart';
import 'package:flutter_application_1/Provider/app_config_provider.dart';
import 'package:flutter_application_1/my_theam.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class HadeathPage extends StatefulWidget {
  static const String routeName = 'Hadeath_Page';
  const HadeathPage({super.key});

  @override
  State<HadeathPage> createState() => _HadeathPageState();
}

class _HadeathPageState extends State<HadeathPage> {
  List<String> ver = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadeathArgs;
    var provider = Provider.of<AppConfigProvider>(context);
    loadFile(args.indexOfAhadeath);

    return Stack(
      children: [
        provider.isDarkMode()
            ? Image.asset('assets/img/darkback.png',
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
                  style: TextStyle(
                      color: provider.isDarkMode()
                          ? MyTheme.white
                          : MyTheme.black))),
          body: ver.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : Container(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                  margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                    vertical: MediaQuery.of(context).size.height * 0.02,
                  ),
                  decoration: BoxDecoration(
                    color: provider.isDarkMode()
                        ? const Color.fromARGB(100, 20, 26, 46)
                        : const Color.fromARGB(100, 255, 255, 255),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              '${AppLocalizations.of(context)!.hadeath_Name} ${args.indexOfAhadeath}',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      color: provider.isDarkMode()
                                          ? MyTheme.priamaryDarkFont
                                          : MyTheme.black)),
                          const SizedBox(width: 20),
                          FaIcon(FontAwesomeIcons.playCircle,
                              size: 30,
                              color: provider.isDarkMode()
                                  ? MyTheme.priamaryDarkFont
                                  : MyTheme.black)
                        ],
                      ),
                      Divider(
                          thickness: 2,
                          color: provider.isDarkMode()
                              ? MyTheme.priamaryDarkFont
                              : MyTheme.primary),
                      Expanded(
                        child: ListView.builder(
                          itemBuilder: (context, index) => Text(ver[index],
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                      color: provider.isDarkMode()
                                          ? MyTheme.priamaryDarkFont
                                          : MyTheme.black)),
                          itemCount: ver.length,
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ],
    );
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/text/hadeth/h$index.txt');
    List<String> Al_Ahadeath = content.split('\n');
    Al_Ahadeath.removeAt(0);
    ver = Al_Ahadeath;
    setState(() {});
  }
}
