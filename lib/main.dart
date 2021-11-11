import 'package:device_preview/device_preview.dart';
import 'package:exemplo_responsividade_curso/pages/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
   //runApp(MyApp());  //rodar o app normal   abaixo é como rodar no device preview
  runApp(DevicePreview(   //  se for rodar no device preview
    builder: (_) => MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Responsivo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: DevicePreview.appBuilder, // quando for usar o device preview
      locale: DevicePreview.locale(context), // quando for usar o device preview
      home: HomePage(),
    );
  }
}
