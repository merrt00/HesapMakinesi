import 'package:flutter/material.dart';
class AnaEkran extends StatefulWidget {
  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  // Null hatası almamak için başlangıç değeri verdik:
  num sayi1 = 0, sayi2 = 0, sonuc = 0;

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  // Hesaplama fonksiyonları
  void sayiTopla() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 + sayi2;
    });
  }

  void sayiCikar() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 - sayi2;
    });
  }

  void sayiCarp() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 * sayi2;
    });
  }

  void sayiBol() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 / sayi2;
    });
  }
  void Temizle() {
    setState(() {
      sayi1 = 0;
      sayi2 = 0;
      sonuc = 0;
      t1.text = '';
      t2.text = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(50),
      child: Center(
        child: Column(
          children: <Widget>[
            Text("$sonuc"),
            TextField(
              controller: t1,
            ),
            TextField(
              controller: t2,
            ),
            ElevatedButton(
              onPressed: sayiTopla,
              child: const Text("Topla"),
            ),
            ElevatedButton(
              onPressed: sayiCikar,
              child: const Text("Çıkar"),
            ),
            ElevatedButton(
              onPressed: sayiCarp,
              child: const Text("Çarp"),
            ),
            ElevatedButton(
              onPressed: sayiBol,
              child: const Text("Böl"),
            ),
            ElevatedButton(
              onPressed: Temizle,
              child: const Text("Temizle"),
            ),
          ],
        ),
      ),
    );
  }
}
