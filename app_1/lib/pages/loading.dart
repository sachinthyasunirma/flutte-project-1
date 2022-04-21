import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class LoadingScreen extends StatefulWidget {
  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  var url = Uri.parse("http://worldtimeapi.org/api/timezone/Asia/Colombo");
  void getTime() async {
    //make response
    Response response = await get(url);
    Map data = jsonDecode(response.body);
    // print(data);
    //get properties from data
    String dateTime = data['datetime'];
    String offset = data['utc_offset'];
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
