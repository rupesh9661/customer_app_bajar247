import 'package:flutter/material.dart';
import 'package:bajar247/views/eCommerce/products/layouts/product_details_layout.dart';

class EcommerceProductDetailsView extends StatelessWidget {
  final int productId;
  const EcommerceProductDetailsView({
    super.key,
    required this.productId,
  });

  @override
  Widget build(BuildContext context) {
    return EcommerceProductDetailsLayout(
      productId: productId,
    );
  }
}
