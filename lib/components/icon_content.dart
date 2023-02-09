import 'package:flutter/material.dart';

import '../constants.dart';

class IconContent extends StatelessWidget {
  const IconContent({Key? key, required this.title, required this.iconName})
      : super(
          key: key,
        );

  final String title;
  final IconData iconName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconName,
          size: 70,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          title,
          style: kLabelStyle,
        ),
      ],
    );
  }
}
