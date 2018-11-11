import 'package:flutter/material.dart';
import 'package:flutter_app2/Weather_home.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title:'Weather Home',
        debugShowCheckedModeBanner: false,
       home: new WeatherHome(),
    );

  }

}
//openweatherapp.api