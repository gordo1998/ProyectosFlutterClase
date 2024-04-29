import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listviews/main.dart';
import 'package:listviews/utils/app_settings.dart';
import 'package:flutter_gen/gen_l10n/app_local.dart';
import 'package:intl/intl.dart';



/**
 * Widget para mostrar un selector de idioma.
 */
List<Widget> languageSelector(BuildContext context) {
  final appState = context.findAncestorStateOfType<MyApp>();
    final text = AppLocalizations.of(context)!;
  
  return [
    DropdownButton(
      value: appState?.locale,
      icon: const Icon(Icons.language),
      items:  [
        DropdownMenuItem(
          value: Locale('en', 'US'),
          child: Text(text.en),
        ),
        DropdownMenuItem(
          value: Locale('es', 'ES'),
          child: Text(text.es),
        ),
        DropdownMenuItem(
          value: Locale('ar', '_DZ'),
          child: Text(text.ar),
        ),
        DropdownMenuItem(
          value: Locale('fr', 'FR'),
          child: Text(text.fr),
        ),
      ],
      // Éste callback permite cambiar el idioma de la aplicacion, mediante
      // el método changeLanguage.
      onChanged: (locale) {
        if (locale != null) {
          appState?.changeLanguage(locale);
        }
      },
    )
  ];
}
