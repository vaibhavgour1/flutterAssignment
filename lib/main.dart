import 'package:dio/dio.dart';
import 'package:dummy/api/api_provider.dart';
import 'package:dummy/api/ui/coin_rich_screen.dart';
import 'package:flutter/material.dart';

BaseOptions baseOptions = BaseOptions(
  receiveTimeout: 60000,
  sendTimeout: 60000,
  responseType: ResponseType.json,
  maxRedirects: 3,
  headers: {"X-CMC_PRO_API_KEY": "27ab17d1-215f-49e5-9ca4-afd48810c149"},
);
Dio dio = Dio(baseOptions);
ApiProvider apiProvider = ApiProvider();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CoinRichScreen(),
    );
  }
}
