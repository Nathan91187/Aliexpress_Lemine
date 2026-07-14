import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_e_commerce/Widgets/ProductsCard.dart';
class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    final myWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
      title: Text(
          "Aliexpress ለምኔ E-commerce",
      style: TextStyle(
        fontFamily: "Inter"
      ),),
        centerTitle: true,
        backgroundColor: Colors.redAccent[700],
        elevation: 10,
      ),
      body: Padding(
        padding: EdgeInsets.all(0.01 * myWidth),
        child: Expanded(
        child: GridView.count(
          crossAxisCount: 2,
            mainAxisSpacing: 0.01 * myWidth,
            crossAxisSpacing: 0.01 * myWidth,
            children: [
              ProductCard(imagePath: "assets/images/bed.jpg", description: "Comfortable modern bed for restful sleep", price: "10000"),
              ProductCard(imagePath: "assets/images/blanket.png", description: "Soft and warm blanket made from cozy fabric", price: "1000"),
              ProductCard(imagePath: "assets/images/drawer.jpg", description: "Stylish storage drawer", price: "3000",),
              ProductCard(imagePath: "assets/images/earbuds.png", description: "Lenovo ex05 Wireless Earbuds", price: "1200"),
              ProductCard(imagePath: "assets/images/eminem.jpg", description: "The Eminem Show Album Cover", price: "2000"),
              ProductCard(imagePath: "assets/images/glasses.png", description: "Blue light Filter glasses for reading and screen use",price:  "600"),
              ProductCard(imagePath: "assets/images/globe.jpg", description: "Educational world globe showing detailed countries and continents", price: "2000"),
              ProductCard(imagePath: "assets/images/headsets.jpeg", description: "BeatStudio hx05 wired/wireless headsets ", price: "2000",),
              ProductCard(imagePath: "assets/images/laptop.jpg", description: "Lenovo Ideapad 3, i5-1155G7, 512 GB SSD, 8GB ram", price: "9000"),
              ProductCard(imagePath: "assets/images/led.jpg", description: "Energy-efficient LED strip lighting", price: "100"),
              ProductCard(imagePath: "assets/images/mouse.jpg", description: "DELL x-05 wireless Mouse", price: "1000"),
              ProductCard(imagePath: "assets/images/mugs.jpg", description: "Ceramic drinking mugs for hot or cold beverages", price: "100"),
              ProductCard(imagePath: "assets/images/neckbands.jpg", description: "Lenovo He05 wireless Neckbands", price: "1500"),
              ProductCard(imagePath: "assets/images/racist.png", description: "Professional Racist Cotton T-shirt for adults", price: "300"),
              ProductCard(imagePath: "assets/images/shoes.jpeg", description: "Nike-Air comfort shoes for men and women", price: "3000"),
              ProductCard(imagePath: "assets/images/speaker.jpeg", description: "Portable speaker with huge bass and RGB lighting", price: "4000"),
            ],
        ),
    )
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
