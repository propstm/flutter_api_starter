import 'package:flutter_api_starter/network/api_service.dart';

import '../models/sofi_api/product_selection.dart';

class SofiRepository {
  SofiRepository({required this.api});

  ApiService api;

  Future<ProductSelection> getData() async {
    String sofiUrl =
        'https://www.sofi.com/member-activation/product-selection/all';
    print('URL: $sofiUrl');
    final response = await api.get(sofiUrl);
    final stronglyTypedResponse =
        ProductSelection.fromJson(response.data as Map<String, dynamic>);
    return stronglyTypedResponse;
  }
}
