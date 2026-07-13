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
    return Card(
      color: Colors.redAccent[700],
      child: Padding(
          padding: EdgeInsets.all(0.01 * myWidth),
        child: Row(
          spacing: 0.01 * myWidth,
          children: [
            Expanded(
              flex: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.asset(widget.image),
                )),
            Expanded(
              flex: 6,
              child: Column(
              children: [
                        Text(
                          widget.description
                          ,style: TextStyle(
                          color: Colors.black87,
                        ),
                        ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(2),
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
                                    color: Colors.redAccent[700]
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
                    Container(
                      color: Colors.black87,
                      child: Text(
                        "ETB ${widget.price}",
                        style: TextStyle(
                          color: Colors.redAccent[700]
                        ),
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
