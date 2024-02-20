import 'package:flutter/material.dart';
import 'package:flutter_application_1/Provider/app_config_provider.dart';
import 'package:flutter_application_1/QuranTab/set_sura_itme.dart';
import 'package:flutter_application_1/my_theam.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class QuranTab extends StatelessWidget {
  QuranTab({super.key});
  List<String> suraFinalName = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Center(
        child: Column(children: [
      Image.asset('assets/img/quran_image.png'),
      Divider(
          thickness: 2,
          color: provider.isDarkMode()
              ? MyTheme.priamaryDarkFont
              : MyTheme.primary),
      Text(AppLocalizations.of(context)!.fehres,
          style: Theme.of(context).textTheme.titleMedium),
      Divider(
          thickness: 2,
          color: provider.isDarkMode()
              ? MyTheme.priamaryDarkFont
              : MyTheme.primary),
      Expanded(
        child: ListView.separated(
            itemBuilder: (context, index) {
              return SetSuraItem(
                  nameOfSuraItme: (provider.appLanguage == "en")
                      ? suraNameEn[index]
                      : suraName[index],
                  numberOfSuraItem: (index + 1));
            },
            separatorBuilder: (context, index) {
              return const Divider(thickness: 2, color: MyTheme.primary);
            },
            itemCount: suraName.length),
      )
    ]));
  }

  //List On SuraName
  List<String> suraName = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  List<String> suraNameEn = [
    "Al-Fatihah",
    "Al-Baqarah",
    "Al Imran",
    "An-Nisa",
    "Table",
    "Al-An'am",
    "Al-A'raf",
    "Anfal",
    "Repentance",
    "Yunus",
    "Hood"
        "Joseph",
    "Thunder",
    "Abraham",
    "Hijr",
    "Bee",
    "Isra",
    "The Cave",
    "Maryam",
    "Taha",
    "The Prophets",
    "Hajj",
    "The Believers"
        "Light",
    "Al-Furqan",
    "Poets",
    "Ants",
    "Stories",
    "Spider",
    "Rum",
    "Luqman",
    "Prostration",
    "Al-Ahzab",
    "Saba"
        "Fatir",
    "Yasin",
    "Al-Saffat",
    "S",
    "Al-Zumar",
    "Ghafir",
    "Fassilat",
    "Al-Shura",
    "Al-Zukhruf",
    "Dukhan",
    "Al-Jathiyah",
    "Al-Ahqaf"
        "Muhammad",
    "Al-Fath",
    "Al-Hujurat",
    "Q",
    "Al-Dhariyat",
    "The Phase",
    "The Star",
    "The Moon",
    "The Most Gracious",
    "Al-Waqi'ah",
    "Iron",
    "The Galaxy"
        "The insect",
    "the examiner",
    "the class",
    "Friday",
    "the hypocrites",
    "the deviants",
    "the divorce",
    "the prohibition",
    "the king",
    "the pen",
    "the truth",
    "the miracles",
    "Noah",
    "The Jinn",
    "Al-Muzzammil"
        "Al-Muddaththir",
    "The Resurrection,"
        "Insan,"
        "Al-Mursalat,"
        "Al-Naba"
        "Al-Naziat,"
        "Abs,"
        "Al-Takwir,"
        "Al-Infitar"
        "Al-Mutaffafeen",
    "Al-Inshiqaq",
    "Al-Buruj",
    "Al-Tariq",
    "Ala'",
    "Al-Ghashiya",
    "Fajr",
    "Al-Balad",
    "Sun",
    "Night",
    "Dhuha",
    "Al-Sharh"
        "figs",
    "leeches",
    "destiny",
    "evidence",
    "earthquake",
    "adiyat",
    "al-qaraa",
    "reproduction",
    "squeezing",
    "Hamza",
    "Elephant",
    "Quraysh",
    "Al-Ma'un",
    "Al-Kawthar",
    "Al-Kafirun",
    "Al-Nasr",
    "Al-Masad",
    "Ikhlas",
    "Al-Falaq",
    "Al-Nas"
  ];
}
