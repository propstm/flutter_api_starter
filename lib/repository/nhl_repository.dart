import 'package:flutter_api_starter/models/nhl_api/roster_response.dart';
import 'package:flutter_api_starter/network/api_service.dart';

class NhlRepository {
  NhlRepository({required this.api});

  ApiService api;

  Future<RosterResponse> getRoster() async {
    String url = '${api.baseAPI}/roster/DET/20232024';
    print('URL: $url');
    final response = await api.get(url);
    final stronglyTypedResponse =
        RosterResponse.fromJson(response.data as Map<String, dynamic>);
    return stronglyTypedResponse;
  }
}
