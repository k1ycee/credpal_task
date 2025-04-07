import 'package:credpal_task/widgets/brand_item_widget.dart';
import 'package:credpal_task/widgets/utils/brands.dart';
import 'package:flutter/material.dart';

class BrandsGridPage extends StatelessWidget {
  const BrandsGridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: brands.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 1.2,
      ),
      scrollDirection: Axis.horizontal,
      itemBuilder:
          (context, index) => BrandItemWidget(brandModel: brands[index]),
    );
  }
}
