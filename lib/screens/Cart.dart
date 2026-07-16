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
  @override
  Widget build(BuildContext context) {
    if(myItems.isEmpty){
      return Scaffold(
        appBar: AppBar(
          title: Text("Cart"),
          leading: IconButton(
              onPressed:(){
                Navigator.pop(context);
              }, 
              icon: Icon(Icons.arrow_back))
        ),
        body: Text("Your cart is empty"),
      );
    }
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
          title: Text("Cart"),
          centerTitle: true,
          backgroundColor: Colors.redAccent[700],
          leading: IconButton(
              onPressed:(){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back))
      ),
    body:
    Padding(
      padding: EdgeInsets.all(20),
      child: Row(
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
    )
    );
  }
}


