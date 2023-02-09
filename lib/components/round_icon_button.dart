import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({Key? key, required this.icon, required this.onPress})
      : super(key: key);

  final IconData icon;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      elevation: 0,
      constraints: const BoxConstraints.tightFor(
        width: 46,
        height: 46,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4E5F),
      child: Icon(icon),
    );
  }
}
