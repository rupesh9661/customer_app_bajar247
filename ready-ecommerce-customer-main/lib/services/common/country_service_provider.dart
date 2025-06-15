
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:bajar247/config/app_constants.dart';
import 'package:bajar247/services/base/eCommerce/all_country_provider_base.dart';
import 'package:bajar247/utils/api_client.dart';

class CountryServiceProvider extends CountryProviderBase {
  final Ref ref;
  CountryServiceProvider(this.ref);

  @override
  Future<Response> getAllCountry() {
    final response = ref.read(apiClientProvider).get(AppConstants.allCountry);
    return response;
  }
}

final countryServiceProvider = Provider((ref) => CountryServiceProvider(ref));
