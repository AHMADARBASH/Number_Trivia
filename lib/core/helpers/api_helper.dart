import 'package:http/http.dart' as http;
import 'package:number_trivia/core/exceptions/exceptions.dart';
import 'dart:convert';

const timeOutDuraion = Duration(seconds: 30);

class APIHelper {
  // ignore: non_constant_identifier_names
  Future<dynamic> get({required String URL, String? token}) async {
    var headers = token == null
        ? {
            "Accept": "application/json",
            "Content-type": "application/json",
          }
        : {
            "Accept": "application/json",
            "Content-type": "application/json",
            "Authorization": "Bearer $token",
          };

    final url = Uri.parse(URL);
    final response = await http.get(url, headers: headers).timeout(
      timeOutDuraion,
      onTimeout: () {
        throw ServerException(message: 'Time out');
      },
    );
    if (response.statusCode > 201) {
      if (response.statusCode == 404) {
        throw EmptyException(message: 'Not Found');
      }
      if (response.statusCode == 401) {
        throw UnauthorizedException(message: 'Unauthorized');
      }
      if (response.statusCode >= 500) {
        throw ServerException(
            message: 'Internal Server Error \n code: ${response.statusCode}');
      }
      throw ServerException(message: response.body);
    }
    return json.decode(response.body);
  }

  Future<dynamic> post(
      // ignore: non_constant_identifier_names
      {required String URL,
      dynamic body,
      String? token}) async {
    final headers = token == null
        ? {
            "Accept": "application/json",
            "Content-type": "application/json",
          }
        : {
            "Accept": "application/json",
            "Content-type": "application/json",
            "Authorization": "Bearer $token"
          };
    final url = Uri.parse(URL);
    final response =
        await http.post(url, body: json.encode(body), headers: headers).timeout(
      timeOutDuraion,
      onTimeout: () {
        throw ServerException(message: 'Time out');
      },
    );
    if (response.statusCode > 201) {
      if (response.statusCode >= 500) {
        throw ServerException(
            message: 'Internal Server Error \n code: ${response.statusCode}');
      } else {
        throw ServerException(message: json.decode(response.body));
      }
    }
    return json.decode(response.body);
  }

  Future<dynamic> delete(
      // ignore: non_constant_identifier_names
      {required String URL,
      dynamic body,
      String? token}) async {
    final headers = token == null
        ? {
            "Accept": "application/json",
            "Content-type": "application/json",
          }
        : {
            "Accept": "application/json",
            "Content-type": "application/json",
            "Authorization": "Bearer $token"
          };
    final url = Uri.parse(URL);
    final response = await http
        .delete(url, body: json.encode(body), headers: headers)
        .timeout(
      timeOutDuraion,
      onTimeout: () {
        throw ServerException(message: 'Time out');
      },
    );
    if (response.statusCode > 201) {
      if (response.statusCode >= 500) {
        throw ServerException(
            message: 'Internal Server Error \n code: ${response.statusCode}');
      }
      throw ServerException(message: json.decode(response.body));
    }
    return json.decode(response.body);
  }

  Future<dynamic> put(
      // ignore: non_constant_identifier_names
      {required String URL,
      dynamic body,
      String? token}) async {
    final headers = token == null
        ? {
            "Accept": "application/json",
            "Content-type": "application/json",
          }
        : {
            "Accept": "application/json",
            "Content-type": "application/json",
            "Authorization": "Bearer $token"
          };
    final url = Uri.parse(URL);
    final response =
        await http.put(url, body: json.encode(body), headers: headers).timeout(
      timeOutDuraion,
      onTimeout: () {
        throw ServerException(message: 'Time out');
      },
    );
    if (response.statusCode > 201) {
      if (response.statusCode >= 500) {
        throw ServerException(
            message: 'Internal Server Error \n code: ${response.statusCode}');
      }
      throw ServerException(message: json.decode(response.body));
    }
    return json.decode(response.body);
  }
}
