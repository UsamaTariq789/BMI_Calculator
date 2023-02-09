import 'package:flutter/material.dart';

class HeightSelector extends StatefulWidget {
  const HeightSelector({Key? key}) : super(key: key);

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  int _value = 6;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'HEIGHT',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _value.toString(),
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'cm',
              ),
            ],
          ),
          Slider(
              value: _value.toDouble(),
              min: 1.0,
              max: 20.0,
              divisions: 10,
              thumbColor: Colors.red,
              activeColor: Colors.white,
              inactiveColor: Colors.white,
              onChanged: (double newValue) {
                setState(() {
                  _value = newValue.round();
                });
              },
              semanticFormatterCallback: (double newValue) {
                return '${newValue.round()} dollars';
              }),
        ],
      ),
    );
  }
}
