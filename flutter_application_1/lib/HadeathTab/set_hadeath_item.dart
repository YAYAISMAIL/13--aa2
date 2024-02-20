import 'package:flutter/material.dart';
import 'package:flutter_application_1/HadeathTab/hadeath_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// ignore: must_be_immutable
class SetHadeathItem extends StatelessWidget {
  int numberOfHadeath;
  SetHadeathItem({super.key, required this.numberOfHadeath});

  @override
  Widget build(BuildContext context) {
    return Center(child: 
    InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(HadeathPage.routeName, 
        arguments: HadeathArgs(indexOfAhadeath: numberOfHadeath+1));
      },
      child: Text('${AppLocalizations.of(context)!.hadeath_Name} ${numberOfHadeath+1}', style: Theme.of(context).textTheme.titleSmall)));
  }
}

class HadeathArgs{
  int indexOfAhadeath;
  HadeathArgs({required this.indexOfAhadeath});
}