import 'package:flutter/material.dart';
class Modifyamounts extends StatelessWidget {
  final IconData icon;
  final VoidCallback action;
  const Modifyamounts({super.key, required this.icon,required this.action});

  @override
  Widget build(BuildContext context) {
    final myWidth = MediaQuery.of(context).size.width;
    return SizedBox(
        child: IconButton(
          onPressed: action,
          icon: Icon(icon, color: Colors.black, size: myWidth* 0.02),
          style: IconButton.styleFrom(
            backgroundColor: Colors.redAccent[700],
          ),
          padding: EdgeInsets.zero,
          constraints: BoxConstraints(
            minHeight: myWidth * 0.03,
            minWidth: myWidth * 0.03,
          ),
        )
    );
  }
}
