import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_designs/screens/basic_design.dart';
import 'package:flutter_designs/screens/home_screen.dart';

import 'screens/scroll_design.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Para cambiar el color al status bar
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'basic_design': (_) => BasicDesignScreen(),
        'scroll_screen': (context) => ScrollScreen(),
        'home_screen': (context) => HomeScreen()
      },
    );
  }
}
