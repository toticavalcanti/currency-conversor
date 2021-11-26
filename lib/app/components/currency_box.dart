import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 57,
            child: DropdownButton(
              value: 'Real',
              isExpanded: true,
              underline: Container(height: 1, color: Colors.amber),
              items: const [
                DropdownMenuItem(
                  value: 'Real',
                  child: Text(
                    'Real',
                  ),
                ),
                DropdownMenuItem(
                  value: 'Dolar',
                  child: Text(
                    'Dolar',
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 10),
        const Expanded(
            flex: 2,
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber),
                ),
              ),
            )),
      ],
    );
  }
}
