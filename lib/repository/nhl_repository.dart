import 'dart:convert';

import 'package:flutter_api_starter/models/nhl_api/roster_response.dart';
import 'package:flutter_api_starter/network/api_service.dart';

class NhlRepository {
  NhlRepository({required this.api});

  ApiService api;

  Future<RosterResponse> getRoster() async {
    final response = await api.get(api.baseAPI + '/roster');
    final stronglyTypedResponse = RosterResponse.fromJson(
        jsonDecode(response.data) as Map<String, dynamic>);
    return stronglyTypedResponse;
  }
}
