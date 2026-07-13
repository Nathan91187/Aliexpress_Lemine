import 'package:flutter/material.dart';
import 'package:mini_e_commerce/Datas/CartList.dart';
import 'package:mini_e_commerce/Datas/Items.dart';
class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List <String> items = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Row(
      children: [
        Expanded(
            flex: 4,
            child: Column(
            ))
      ],
    ),
    );
  }
}


