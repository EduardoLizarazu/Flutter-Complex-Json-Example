import 'package:flutter/material.dart';
import 'package:flutter_with_models/EasyJsonParse/JsonParseDemo.dart';

void main() {
  runApp(HomeApp());
}

// https://app.quicktype.io/
class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: JsonParseDemo(),
    );
  }
}
