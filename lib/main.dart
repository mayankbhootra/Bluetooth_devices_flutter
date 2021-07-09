import 'package:flutter/material.dart';

import './screens/status_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        accentColor: Colors.red.shade400,
      ),
      debugShowCheckedModeBanner: false,
      home: const StatusScreenProvider(),
    );
  }
}
