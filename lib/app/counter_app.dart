import 'package:counter_app/pages/home_page.dart';
import 'package:counter_app/pages/home_page_2.dart';
import 'package:flutter/material.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter App",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
