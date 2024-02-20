import 'package:flutter/material.dart';
import 'package:flutter_application_1/QuranTab/sura_page.dart';

// ignore: must_be_immutable
class SetSuraItem extends StatelessWidget {
  String nameOfSuraItme;
  int numberOfSuraItem;

  SetSuraItem({super.key, required this.nameOfSuraItme, required this.numberOfSuraItem});

  @override
  Widget build(BuildContext context) {
    return Center(child: Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1),
      child: InkWell(
        onTap: (){
          Navigator.of(context).pushNamed(SuraPage.routeName,
          arguments: suraArgs(name: nameOfSuraItme, numberOf: numberOfSuraItem));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(nameOfSuraItme,style:  Theme.of(context).textTheme.titleSmall),
            Text(numberOfSuraItem.toString(),style:  Theme.of(context).textTheme.titleSmall),  
          ],
        ),
      ),
    ));
  }
}

// ignore: camel_case_types
class suraArgs{
  String name;
  int numberOf;

  suraArgs({required this.name, required this.numberOf});
}