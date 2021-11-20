import 'package:flutter/material.dart';
import 'package:money_conversor/app/models/currency_model.dart';

class HomeController {
  late List<CurrencyModel> currencies;

  final TextEditingController toText;
  final TextEditingController fromText;

  late CurrencyModel toCurrency;
  late CurrencyModel fromCurrency;

  HomeController({required this.toText, required this.fromText}) {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  void convert() {
    String text = toText.text;
    double value = double.tryParse(text.replaceAll(',', '.')) ?? 1.0;
    double returnValue = 0;
    if (fromCurrency.name.isEmpty) {
      return;
    }
    if (fromCurrency.name == 'Real') {
      returnValue = value * toCurrency.real;
    }
    if (fromCurrency.name == 'Dolar') {
      returnValue = value * toCurrency.dolar;
    }
    if (fromCurrency.name == 'Euro') {
      returnValue = value * toCurrency.euro;
    }
    if (fromCurrency.name == 'Bitcoin') {
      returnValue = value * toCurrency.bitcoin;
    }

    fromText.text = returnValue.toStringAsFixed(2);
  }
}
