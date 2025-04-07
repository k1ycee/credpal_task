import 'package:credpal_task/widgets/utils/brand_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BrandItemWidget extends StatelessWidget {
  const BrandItemWidget({super.key, required this.brandModel});

  final BrandModel brandModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            brandModel.brandImage.svg(),
            Positioned(
              top: -2,
              right: -2,
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2),
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 8),

        Text(
          brandModel.brandName,
          style: GoogleFonts.prompt(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
