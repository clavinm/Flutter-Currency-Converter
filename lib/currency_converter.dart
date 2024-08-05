import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
          color: Colors.red, width: 2.0, style: BorderStyle.solid),
      borderRadius: BorderRadius.circular(10.0),
    );
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hello World',
                style: TextStyle(color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Enter the Amount ',
                    hintStyle: const TextStyle(color: Colors.black38),
                    prefixIcon: const Icon(Icons.monetization_on_outlined),
                    prefixIconColor: Colors.green,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              TextButton(onPressed: () {}, child: const Text('Click Me')),
            ],
          ),
        ));
  }
}
