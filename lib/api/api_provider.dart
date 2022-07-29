import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dummy/api/model.dart';
import 'package:dummy/api/server_error.dart';

import '../main.dart';

class ApiProvider {
  static ApiProvider apiProvider = ApiProvider.internal();

  ApiProvider.internal();

  factory ApiProvider() {
    return apiProvider;
  }

  Future<CurrencyResponse> getData() async {
    try {
      Response res =
          await dio.get("https://pro-api.coinmarketcap.com/v1/cryptocurrency/quotes/latest?symbol=BTC,ETH,LT,C");
      log("res-->$res");
      return CurrencyResponse.fromJson(res.toString());
    } catch (error) {
      String message = "";
      if (error is DioError) {
        ServerError e = ServerError.withError(error: error);
        message = e.getErrorMessage();
      } else {
        message = "Please try again later!";
      }
      print("Exception occurred: $message stackTrace: $error");
      return CurrencyResponse();
    }
  }
}
