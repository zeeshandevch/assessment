

import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;


class BaseClient{
  static Future<Either> getMethod(String url, String apiName, Map<String, String>? header) async {
    try {
      log("${apiName.toUpperCase()} API URL : $url");
      var response = await http.get(
        Uri.parse(url),
        headers: header ?? {
          HttpHeaders.contentTypeHeader: 'application/json',
          'Accept': 'application/json',
        },
      );
      final jsonData = jsonDecode(response.body);
      if (response.statusCode == 200) {
        log("SUCCESS");
        return right(jsonData);
      } else if (response.statusCode == 401) {
        log("INCORRECT");
        return left(jsonData["message"]);
      } else if (response.statusCode == 422) {
        log("INCORRECT");
        return left(jsonData["message"]);
      }
      else {
        return left(jsonData["message"]);
      }
    } on SocketException {
      return left("No Internet Connection");
    } on HttpException {
      return left("Something went wrong");
    } on FormatException {
      return left("Bad Response");
    } catch (e,trace) {
      log("Trace ===> $trace");
      log("${apiName.toUpperCase()} Error ===> $e");
      return left("$e");
    }
  }
}
