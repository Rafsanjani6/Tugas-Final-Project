import 'package:flutter/material.dart';
import 'package:pertemuan/model/pegawai.dart';
import 'package:pertemuan/ui/pegawai_detail_page.dart';


class PegawaiUpdateForm extends StatefulWidget {
  final Pegawai pegawai;

  const PegawaiUpdateForm({Key? key, required this.pegawai }) : super(key: key);

  _PegawaiUpdateFormState createState() => _PegawaiUpdateFormState();
}

class _PegawaiUpdateFormState extends State<PegawaiUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPegawaiCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _namaPegawaiCtrl.text = "${widget.pegawai.namaPegawai}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ubah Pegawai")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldNamaPegawai(),
              SizedBox(height: 20),
              _tombolSimpan()],
          ),
        ),
      ),
    );
  }

  _fieldNamaPegawai() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Pegawai"),
      controller: _namaPegawaiCtrl,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          Pegawai pegawai = new Pegawai(namaPegawai: _namaPegawaiCtrl.text);
          Navigator.pop(context as BuildContext);
          Navigator.pushReplacement(context as BuildContext,
              MaterialPageRoute(
                  builder: (context) => PegawaiDetailPage(pegawai: pegawai)));
        },
        child: const Text("Simpan Perubahan"));
  }
}