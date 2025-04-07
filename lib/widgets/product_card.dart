import 'package:credpal_task/core/utils/colors.dart';
import 'package:credpal_task/widgets/utils/product_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 161,
      height: 174,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: productModel.brandImage.image(
                  height: 120,
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: productModel.seller .svg(height: 60),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            productModel.product,
            style: GoogleFonts.prompt(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: black,
            ),
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Text(
                '₦ ${productModel.price}',
                style: GoogleFonts.prompt(
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              SizedBox(width: 8),
              Text(
                '₦ ${productModel.price}',
                style: GoogleFonts.prompt(
                  color: textColorLight,
                  fontSize: 13,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
