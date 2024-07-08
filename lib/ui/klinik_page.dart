import 'package:flutter/material.dart';
import 'package:pertemuan/model/pasien.dart';
import 'package:pertemuan/model/pegawai.dart';
import 'package:pertemuan/ui/pasien_form_page.dart';
import 'package:pertemuan/ui/pasien_item_page.dart';
import 'package:pertemuan/ui/pegawai_form_page.dart';
import 'package:pertemuan/ui/pegawai_item_page.dart';

class KlinikPage extends StatefulWidget {
  const KlinikPage({super.key});

  @override
  State<KlinikPage> createState() => _KlinikPageState();
}

class _KlinikPageState extends State<KlinikPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: const Text("Data Klinik"),
        backgroundColor: Colors.brown,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => PegawaiFormPage()));
              Navigator.push(
                context,
                  MaterialPageRoute(builder: (context) => PasienFormPage()));
            },
            child: Padding (
              padding: EdgeInsets.all(10),
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          PasienItemPage(pasien: Pasien(namaPasien: "Pasien")),
          PegawaiItemPage(pegawai: Pegawai(namaPegawai: "Pegawai")),
        ]
      ),
    );
  }
}
