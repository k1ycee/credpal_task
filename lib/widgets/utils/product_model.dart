import 'package:credpal_task/assets/assets.gen.dart';

class ProductModel {
  final String product, price, discount;
  final AssetGenImage brandImage;
  final SvgGenImage seller;

  ProductModel({
    required this.seller,
    required this.price,
    required this.discount,
    required this.product,
    required this.brandImage,
  });
}
