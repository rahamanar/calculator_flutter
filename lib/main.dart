import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context){
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);
    return new MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: "Calculator App",
      theme: new ThemeData(primarySwatch: Colors.green),
      home: new HomePage(),
    );
  }
}
