import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bajar247/controllers/common/other_controller.dart';
import 'package:bajar247/generated/l10n.dart';

class ShippingDeliveryLayout extends ConsumerWidget {
  const ShippingDeliveryLayout({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).shippingDelivery),
      ),
      body: ref.watch(shippingDeliveryControllerProvider).when(
            data: (data) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Html(data: data.data.content.description),
                  ],
                ),
              ),
            ),
            error: (error, s) => Center(
              child: Text(error.toString()),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
    );
  }
}
