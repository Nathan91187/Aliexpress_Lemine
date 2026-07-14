import 'package:flutter/material.dart';
class Purchaseoptions extends StatelessWidget {
  final String info;
  final Color color,textColor;
  final VoidCallback action;
  const Purchaseoptions({super.key, required this.info, required this.color, required this.textColor, required this.action});

  @override
  Widget build(BuildContext context) {
    final myWidth = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: action,
      child: Container(
        height: 0.05 * myWidth,
        color: color,
        child: Center(
          child: Text(
            info,
            style: TextStyle(
              fontSize: 0.017 * myWidth,
              fontFamily: "Inter",
              fontWeight: FontWeight.w900,
              color: textColor
            )
          ),
        ),
      ),
    );

  }
}
