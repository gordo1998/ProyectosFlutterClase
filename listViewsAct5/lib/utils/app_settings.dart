import 'package:intl/number_symbols.dart';
import 'package:intl/number_symbols_data.dart';
import 'package:listviews/utils/numberFormatSymbolsExt.dart';
import 'dart:ui' as ui;

/// Internationalization
/// Modificad esta variable para asociar la configuración dependiendo de la zona geográfica.
String defaultLocale = ui
    .window.locale.languageCode; //Esto me da el codigo de idioma predeterminado
String? defaultLanguage =
    ui.window.locale.countryCode; //Esto me da la región predeterminada
String defLocale = "";
String? globalLocale = defaultLocale;

/// Crear el Locale del idioma por defecto del dispositivo.
String get defaultDeviceLanguage {
  //print(defaultLocale);
  defLocale = defaultLocale;

  if (defaultLanguage != null) {
    defLocale += '_$defaultLanguage'; // <-- P.ej. 'es_ES'
  }

  return defLocale;
}

Map<String, String> internationalizationSettings(String local) {
  switch (local) {
    //DefaultLocale lo hemos creado arriba que es el idioma actual
    case 'es_ES':
      numberFormatSymbols['es_ES'] =
          (numberFormatSymbols['es_ES'] as NumberSymbols).copyWith(
        //esto pertenece a NumberFormarSymbolsExt
        currencySymbol: '€', //Si no ponemos esto sería EUR y no el signo
      );

      return internES;
    case 'en_US':
      numberFormatSymbols['en_US'] =
          (numberFormatSymbols['en_US'] as NumberSymbols).copyWith(
        currencySymbol: r'$',
      );
      return internUSA;
    case 'ar_DZ':
      numberFormatSymbols['ar_DZ'] =
          (numberFormatSymbols['ar_DZ'] as NumberSymbols).copyWith(
        //esto pertenece a NumberFormarSymbolsExt
        currencySymbol: 'ر.س', //Si no ponemos esto sería EUR y no el signo
      );
      return internSA;
    case 'fr_FR':
      numberFormatSymbols['fr_FR'] =
          (numberFormatSymbols['fr_FR'] as NumberSymbols).copyWith(
        //esto pertenece a NumberFormarSymbolsExt
        currencySymbol: "€", //Si no ponemos esto sería EUR y no el signo
      );
      return internFR;

    default:
      return internES;
  }
}

/// Internacioanlización España
Map<String, String> get internES => {
      'locale': 'es_ES',
      'currency_symbol': '€€',
    };

/// Internacioanlización EEUU
Map<String, String> get internUSA => {
      'locale': 'en_US',
      'currency_symbol': 's',
    };

Map<String, String> get internSA => {
      "locale": "ar_DZ",
      "currency_symbol": "ر.س",
    };

Map<String, String> get internFR => {
      "locale": "fr_FR",
      "currency_symbol": "€",
    };
