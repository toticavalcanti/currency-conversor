import 'package:flutter/material.dart';
import 'package:money_conversor/app/components/currency_box.dart';
import 'package:money_conversor/app/controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  late HomeController homeController;

  @override
  void initState() {
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 20),
          child: Column(
            children: [
              Image.asset('assets/images/logo.png', width: 150, height: 150),
              SizedBox(
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(height: 50),
              CurrencyBox(),
              const SizedBox(height: 10),
              CurrencyBox(),
              const SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.amber),
                  ),
                  child: const Text(
                    'CONVERTER',
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
