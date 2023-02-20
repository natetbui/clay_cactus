import 'package:flutter/material.dart';

class Product {
  final String name;
  final String imageUrl;
  final double price;

  Product({required this.name, required this.imageUrl, required this.price});
}

final List<Product> products = [
  Product(
    name: 'Black Sweater',
    imageUrl: 'assets/images/black_sweater_front.jpeg',
    price: 30.0,
  ),
  Product(
    name: 'Green Sweater',
    imageUrl: 'assets/images/green_sweater_front.jpeg',
    price: 30.0,
  ),
  Product(
    name: 'Blue Sweater',
    imageUrl: 'assets/images/blue_sweater_front.jpeg',
    price: 30.0,
  ),
  Product(
    name: 'Black Tshirt',
    imageUrl: 'assets/images/black_tshirt_front.jpeg',
    price: 20.0,
  ),
  Product(
    name: 'Orange Tshirt',
    imageUrl: 'assets/images/orange_tshirt_front.jpeg',
    price: 20.0,
  ),
];

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image.asset(
                products[index].imageUrl,
                height: 120,
                width: 100,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(height: 10.0),
              Text(products[index].name),
              SizedBox(height: 10.0),
              Text('\$${products[index].price}0'),
            ],
          ),
        );
      },
    );
  }
}
