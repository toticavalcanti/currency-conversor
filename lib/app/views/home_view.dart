import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: DropdownButton(
                        items: const [],
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                        flex: 2,
                        child: TextField(
                          decoration: InputDecoration(),
                        )),
                  ],
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'CONVERTER',
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
