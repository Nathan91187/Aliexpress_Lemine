import 'package:flutter/material.dart';
class CartCard extends StatefulWidget {
  final String description,price,image;
  const CartCard({
    super.key,
    required this.description,
    required this.image,
    required this.price
  });

  @override
  State<CartCard> createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  int amount = 0;
  @override
  Widget build(BuildContext context) {
    final myWidth = MediaQuery.of(context).size.width;
    final myHeight = MediaQuery.of(context).size.height;
    return Card(
      color: Colors.redAccent[700],
      child: Padding(
          padding: EdgeInsets.all(0.01 * myWidth),
        child: Row(
          spacing: 0.01 * myWidth,
          children: [
            Expanded(
              flex: 2,
                child: Align(
                    alignment: Alignment.topLeft,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.asset(widget.image),
                )
            )
            ),
            Expanded(
              flex: 6,
              child: Column(
              children: [
                        Text(
                          widget.description
                          ,style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Inter",
                        ),
                        ),
                Row(
                  spacing: 0.01 * myWidth,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        color: Colors.black87,
                      child: Padding(
                        padding: EdgeInsets.all(2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              onPressed: (){
                                setState(() {
                                  amount++;
                                });
                              },
                                icon: Icon(
                                    Icons.add,
                                  color: Colors.redAccent[700],
                                ),
                                color: Colors.black87,
                            ),
                            Container(
                              color: Colors.black87,
                              child: Text(
                                  "$amount",
                                  style: TextStyle(
                                    color: Colors.redAccent[700],
                                    fontFamily: "Inter",
                                  ),
                              ),
                            ),
                            IconButton(
                              onPressed: (){
                                setState(() {
                                  if(amount > 1){
                                    amount--;
                                  }
                                });
                              },
                                icon: Icon(
                                    Icons.remove,
                                    color: Colors.redAccent[700],
                                ),
                                color: Colors.black87
                            )
                          ],
                        ),
                      ),
                    )
                    ),
                      Text(
                        "ETB ${widget.price}",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 0.015 * myWidth,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Inter",
                        ),
                      )
                  ],
                )
              ],
              )
            ),
          ],
        ),
    ));
  }
}
