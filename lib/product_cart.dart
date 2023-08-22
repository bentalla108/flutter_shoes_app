import 'package:flutter/material.dart';

class ProductCart extends StatelessWidget {
  const ProductCart(
      {super.key,
      required this.title,
      required this.price,
      required this.urlImage,
      required this.backgroundColor});
  final String title;
  final double price;
  final String urlImage;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        /*       color: const Color.fromRGBO(216, 240, 253, 1), */
        color: backgroundColor,
      ),
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '\$ $price',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: Image(
              image: AssetImage(
                urlImage,
              ),
              height: 175,
            ),
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
