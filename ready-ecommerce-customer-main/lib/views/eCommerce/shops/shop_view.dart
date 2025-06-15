import 'package:flutter/material.dart';
import 'package:bajar247/views/eCommerce/shops/layouts/shop_layout.dart';

class EcommerceShopView extends StatelessWidget {
  final int shopId;
  const EcommerceShopView({
    super.key,
    required this.shopId,
  });

  @override
  Widget build(BuildContext context) {
    return EcommerceShopLayout(
      shopId: shopId,
    );
  }
}
