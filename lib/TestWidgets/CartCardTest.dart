import 'package:flutter/material.dart';
import 'package:mini_e_commerce/main.dart';
void main(){
  runApp(const MaterialApp(
    home: Cartcardtest(),
  ));
}
class Cartcardtest extends StatelessWidget {
  const Cartcardtest({super.key});


  @override
  Widget build(BuildContext context) {
    int amount = 0;
    final myWidth = MediaQuery.of(context).size.width;
    final myHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text("Cart"),
        centerTitle: true,
      ),
      body: Padding(
          padding: EdgeInsets.all(myWidth * 0.01),
          child: Row(
            children: [
              Expanded(
                flex: 5,
                  child: Card(
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
                        child: Image.asset("assets/images/blanket.png"),
                      )
                  )
              ),
              Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      Text(
                        "Soft and warm blanket made from cozy fabric"
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
                            "ETB 1000",
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
        ),
    )),
            Expanded(
              flex: 2,
                child: Text("data"))])));
  }
}
