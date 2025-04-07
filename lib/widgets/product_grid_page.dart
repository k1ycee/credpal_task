import 'package:credpal_task/widgets/product_card.dart';
import 'package:credpal_task/widgets/utils/product_list.dart';
import 'package:flutter/material.dart';

class ProductGridPage extends StatelessWidget {
  const ProductGridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount:
          products.length, 
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 1.2,
      ),
      scrollDirection: Axis.horizontal,
      itemBuilder:
          (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: ProductCard(productModel: products[index]),
          ),
    );
  }
}
