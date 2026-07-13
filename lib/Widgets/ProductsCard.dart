import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String description;
  final String price;

  const ProductCard({
    super.key,
    required this.imagePath,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    final myWidth = MediaQuery.of(context).size.width;
    return Card(
      elevation: 15,
      shadowColor: Colors.black,
      color: Colors.redAccent[700],
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, 'details',arguments: {
              'imagePath' : imagePath,
              'description': description,
              'price': price
          });
        },
        child: Padding(
          padding: EdgeInsets.all(0.02 * myWidth),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 10,
            children: [
              Expanded(
                flex: 5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Expanded(
                flex: 2,
                child: Center(
                  child: Text(
                    description,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  color: Colors.grey[850],
                  padding: EdgeInsets.all(5),
                child: Text(
                  "ETB $price",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              )
              )
              ),
            ],
          ),
        ),
      ),
    );
  }
}