import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../main.dart';
import '../widgets/hero_card.dart';


class HeroList extends StatelessWidget {
  final String title;

  HeroList({this.title = ''});

  @override
  Widget build(BuildContext context) {
    var t = AppLocalizations.of(context)!;
    final Locale locale = Localizations.localeOf(context);
    // dropdown options
    var items = [
      'en',
      'ar',
    ];


    String getImagePath(String imageName) {
      String basePath = 'assets/images/';
      log('locale: ${locale.countryCode}');
      if (locale.countryCode?.isEmpty == true) {
        return  basePath + 'flag.jpg';
      }
      String localePath = '${locale.countryCode!.toLowerCase()}/';
      return basePath + localePath + imageName;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          DropdownButton(
            // Down Arrow Icon
            icon: const Icon(Icons.settings, color: Colors.white,),
            items: items.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            onChanged: (String? newValue) {
              MyApp.setLocale(context, Locale(newValue!!));
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Padding(
            //   padding: const EdgeInsets.only(bottom: 8.0),
            //   child: Text(t.heroCount(6)),
            // ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  HeroCard(
                    name: t.hopperName,
                    born: '9 December 1906',
                    bio: t.hopperBio,
                    imagePath: 'assets/images/grace_hopper.jpg',
                  ),
                  HeroCard(
                    name: t.turingName,
                    born: '23 June 1912',
                    bio: t.turingBio,
                    imagePath: 'assets/images/alan_turing.jpg',
                  ),
                  HeroCard(
                    name: t.liskovName,
                    born: '7 November 1939',
                    bio: t.liskovBio,
                    imagePath: 'assets/images/barbara_liskov.jpg',
                  ),
                  HeroCard(
                    name: t.wozniakName,
                    born: '11 August 1950',
                    bio: t.wozniakBio('Apple I', 'Apple II'),
                    imagePath: 'assets/images/steve_wozniak.jpg',
                  ),
                  HeroCard(
                    name: t.bernersLeeName,
                    born: '8 June 1955',
                    bio: t.bernersLeeBio,
                    imagePath: 'assets/images/tim_berners_lee.jpg',
                  ),
                  HeroCard(
                    name: t.gatesName,
                    born: '28 October 1955',
                    bio: t.gatesBio('Microsoft Corporation'),
                    imagePath: 'assets/images/bill_gates.jpg',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 2.0),
              child: Image.asset(
                  // 'assets/images/us/flag.jpg',
                getImagePath('flag.jpg'),
                width: 40,
                height: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
