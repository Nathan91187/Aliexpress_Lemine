import 'package:flutter/material.dart';
import 'package:mini_e_commerce/Datas/CartList.dart';
import 'package:mini_e_commerce/Datas/Items.dart';
import 'package:mini_e_commerce/Widgets/CartCard.dart';
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
    Column(
    children: [
    Expanded(
    child: ListView.builder(
      itemCount: myItems.length,
      itemBuilder: (context, index) {
        return CartCard(
          image: myItems[index].image,
          description: myItems[index].description,
          price: myItems[index].price.toString(),
        );
      },
    ),
    ),
    ],),
        Expanded(
          flex: 2,
            child: Column(
              children: [
                Text("Total Price: "),
                ElevatedButton(
                    onPressed: (){},
                    child: Text("Checkout"))
              ],
            ))
      ],
    ),
    );
  }
}


