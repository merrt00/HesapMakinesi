import 'package:ders1/AnaEkran.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hesap Makinesi",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // const anahtar kelimesi performansı artırır
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basit Hesap Makinesi'),
      ),
      body: AnaEkran(),
    );
  }
}

