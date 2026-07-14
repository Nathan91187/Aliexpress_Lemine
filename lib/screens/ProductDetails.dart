import 'package:flutter/material.dart';
import 'package:mini_e_commerce/Datas/CartList.dart';
import 'package:mini_e_commerce/Datas/Descriptions.dart';
import 'package:mini_e_commerce/Datas/Items.dart';
import 'package:mini_e_commerce/Widgets/ModifyAmounts.dart';
import 'package:mini_e_commerce/Widgets/PurchaseOptions.dart';
import 'package:mini_e_commerce/screens/DataNotFound.dart';
class Productdetails extends StatefulWidget {
  const Productdetails({super.key});

  @override
  State<Productdetails> createState() => _ProductdetailsState();
}

class _ProductdetailsState extends State<Productdetails> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map?;
    if(args == null){
      return const Datanotfound();
    }

    int myPrice = int.parse(args['price']);
    String description = args['description'];
    String imagePath = args['imagePath'];
    int modifiable = myPrice;
    final myWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent[700],
          title: Text(
            "Product Details",
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)
          ),
        ),
        backgroundColor: Colors.black87,
        body:
        Padding(
          padding: EdgeInsets.fromLTRB(0.02 * myWidth, 0.05 * myWidth, 0.02 * myWidth, 0.02 * myWidth),
          child: Column(
            spacing: 0.03 * myWidth,
            children: [
              Expanded(
                flex: 2,
                child: Row(
                  spacing: 0.03 * myWidth,
                  children: [
                    Expanded(
                      flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(imagePath),
                    )
                    ),
                    Expanded(
                      flex: 1,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            spacing: 0.01 * myWidth,
                            children: [
                              Expanded(
                                flex: 3,
                              child: Text(
                                  description,
                              style: TextStyle(
                                fontSize: 0.025 * myWidth,
                                fontFamily: "Inter",
                                color: Colors.redAccent[700],
                                fontWeight: FontWeight.w900,
                              )
                        )),Expanded(
                                flex: 1,
                              child: Row(
                                spacing: 3,
                                children: [
                                  Modifyamounts(
                                    icon: Icons.add,
                                    action :() => setState(() {
                                      ++counter;
                                    }),
                                  ),
                                  Container(
                                      color: Colors.black45,
                                      height: myWidth * 0.03,
                                      width: myWidth * 0.05,
                                      child: Center(
                                        child: Text(
                                          "$counter",
                                          style: Theme.of(context).textTheme.titleSmall,
                                        ),
                                      )
                                  ),
                                  Modifyamounts(icon: Icons.remove,
                                  action:() => setState(() {
                                    if(counter > 1){
                                      --counter;
                                    }
                                  })),
                                ],
                              )
                              ),
                              SizedBox(height: 0.04 * myWidth),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                    "ETB $myPrice",
                                    style: Theme.of(context).textTheme.titleSmall),
                              ),
                              Purchaseoptions(
                                info: "Add To Cart",
                                color: Colors.black45,
                                textColor: Colors.redAccent[700]!,
                                action: (){
                                  Items item = Items(image: imagePath, description: description,price: myPrice);
                                  myItems.add(item);
                                },
                              ),
                              Purchaseoptions(
                                info: "Buy Now",
                                color: Colors.redAccent[700]!,
                                textColor: Colors.black87,
                                action: (){

                                },
                              ),
                            ]
                        )
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                  child: SingleChildScrollView(
                child: Card(
                  color: Colors.black54,
                  child: Padding(
                    padding: EdgeInsets.all(0.02 * myWidth),
                  child: Align(
                      alignment: Alignment.center,
                  child: Text(
                    myDescriptions[description]!,
                    style: TextStyle(
                      color: Colors.redAccent[700],
                      fontSize: 0.025 * myWidth,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w900
                    ),
                  ),
                )
              )
              )
                )
              )
            ],
          ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, 'cart');
        },
        backgroundColor: Colors.black87,
        child: Icon(
          Icons.shopping_cart,
          color: Colors.redAccent[700],
        ),
      ),
    );
  }
}
