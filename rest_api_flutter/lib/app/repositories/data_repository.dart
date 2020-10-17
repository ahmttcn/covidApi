import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:rest_api_flutter/app/services/api.dart';
import 'package:rest_api_flutter/app/services/api_service.dart';

class DataRepository {
  DataRepository({@required this.apiService});
  final APIService apiService;

  String _accessToken;

  Future<int> getEndpointData(Endpoint endpoint) async {
    try {
      if (_accessToken == null) {
        //final accessToken = await apiService.getAccessToken();
      }

      return await apiService.getEndpointData(
          accessToken: _accessToken, endpoint: endpoint);
    } on Response catch (response) {
      // token is unauthorized, get access again
      if (response.statusCode == 401) {
        _accessToken = await apiService.getAccessToken();
        return await apiService.getEndpointData(
            accessToken: _accessToken, endpoint: endpoint);
      }
      rethrow;
    }
  }
}
