import 'package:flutter/material.dart';
import 'package:mini_e_commerce/screens/ProductDetails.dart';
import 'package:mini_e_commerce/screens/Products.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    num myWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      routes: {
        '/' :(context) => Products(),
        'details': (context) => Productdetails()
      },
      theme: ThemeData(
        textTheme: TextTheme(
          titleMedium: TextStyle(fontSize: myWidth * 0.025,fontFamily: "Inter", fontWeight: FontWeight.bold),
          titleSmall: TextStyle(fontSize: myWidth * 0.013,fontFamily: "Inter" , fontWeight: FontWeight.w900, color: Colors.redAccent[700]),
        )
      ),
    );
  }
}
