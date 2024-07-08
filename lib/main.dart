import 'package:flutter/material.dart';
import 'package:pertemuan/ui/beranda_page.dart';
import 'package:pertemuan/ui/poli_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Klinik',
      home: Beranda(),
    );
  }
}

