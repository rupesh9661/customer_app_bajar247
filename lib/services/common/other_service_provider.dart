import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:bajar247/config/app_constants.dart';
import 'package:bajar247/services/base/eCommerce/others_provider_base.dart';
import 'package:bajar247/utils/api_client.dart';

class OtherServiceProvider implements OtherProviderBase {
  final Ref ref;
  OtherServiceProvider(this.ref);
  
  @override
  Future<Response> getAboutUs() async {
    final response =
        await ref.read(apiClientProvider).get(AppConstants.aboutUs);
    return response;
  }

  @override
  Future<Response> getShippingDelivery() async {
    final response =
        await ref.read(apiClientProvider).get(AppConstants.shippingDelivery);
    return response;
  }

  @override
  Future<Response> getPrivacyPolicy() async {
    final response =
        await ref.read(apiClientProvider).get(AppConstants.privacyPolicy);
    return response;
  }

  @override
  Future<Response> getTermsAndConditions() async {
    final response =
        ref.read(apiClientProvider).get(AppConstants.termsAndConditions);
    return response;
  }

  @override
  Future<Response> support({required String subject, required String message}) {
    final respnse =
        ref.read(apiClientProvider).post(AppConstants.support, data: {
      'subject': subject,
      'message': message,
    });
    return respnse;
  }

  @override
  Future<Response> getRefundPolicy() {
    final response = ref.read(apiClientProvider).get(AppConstants.refundPolicy);
    return response;
  }

  @override
  Future<Response> getContactUsinfo() {
    final response = ref.read(apiClientProvider).get(AppConstants.contactUs);
    return response;
  }

  @override
  Future<Response> getProfileinfo() async {
    final response = ref.read(apiClientProvider).get(AppConstants.profileinfo);
    return response;
  }
}

final otherServiceProvider = Provider((ref) => OtherServiceProvider(ref));
