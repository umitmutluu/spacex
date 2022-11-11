import "dart:convert";
import 'dart:developer';
import "dart:io";

import "package:http/http.dart" as http;
import 'package:spacex/core/constants/service_constants.dart';
import 'package:spacex/core/exceptions/service_exceptions.dart';

class BaseApiService {
  final String _baseUrl = ServiceConstants.instance!.baseUrl;
  final Map<String, String> _headersJson =
      ServiceConstants.instance!.headersJson;

  Future<dynamic> fetchData(
    String endPoint, {
    Map<String, String>? parameters,
    bool isStatusCodeReturn = false,
  }) async {
    Uri uri = Uri.parse(_baseUrl + endPoint);
    if (parameters != null) {
      uri = Uri.parse(_baseUrl + endPoint).replace(queryParameters: parameters);
    }
    try {
      final http.Response response = await http.get(
        uri,
        headers: _headersJson,
      );
      log("Get Request --->>>${response.request?.url}");
      log(" Get Response --->>>${response.body}");

      return isStatusCodeReturn
          ? response.statusCode
          : _returnResponse(response);
    } on SocketException {
      throw FetchDataException("No Internet Connection");
    }
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = jsonDecode(response.body);
        return responseJson;
      case 201:
        var responseJson = jsonDecode(response.body);
        log(responseJson);
        return responseJson;
      case 400:
        throw BadRequestException(response.body);
      case 500:
      default:
        throw FetchDataException(
          "Error Occurred While Communicating With Server! StatusCode : ${response.statusCode}",
        );
    }
  }
}
