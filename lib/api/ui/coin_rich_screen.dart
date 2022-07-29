import 'package:dummy/api/api_provider.dart';
import 'package:dummy/api/model.dart';
import 'package:dummy/api/utility/network.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CoinRichScreen extends StatefulWidget {
  const CoinRichScreen({Key? key}) : super(key: key);

  @override
  State<CoinRichScreen> createState() => _CoinRichScreenState();
}

class _CoinRichScreenState extends State<CoinRichScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getDate();
  }

  getDate() async {
    if (await Network.isConnected()) {
      CurrencyResponse getVendor = await ApiProvider().getData();
    } else {
      setState(() {});
      Fluttertoast.showToast(backgroundColor: Colors.purple, textColor: Colors.white, msg: "Please turn on  internet");
    }
    //_tap = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 100,
        color: Colors.red,
      ),
    );
  }
}
