import 'package:flutter/material.dart';
import 'package:ongenerateexample/main.dart';
import 'package:ongenerateexample/next_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => MyApp());
      case '/next':
        return MaterialPageRoute(builder: (_) => NextPage());
    }
  }
}
