import 'package:flutter/material.dart';
import 'package:flihid_market_mobile/widgets/left_drawer.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'dart:convert';
import 'package:flihid_market_mobile/screens/menu.dart';

class ProductEntryFormPage extends StatefulWidget {
  const ProductEntryFormPage({super.key});

  @override
  State<ProductEntryFormPage> createState() => _ProductEntryFormPageState();
}

class _ProductEntryFormPageState extends State<ProductEntryFormPage> {
  final _formKey = GlobalKey<FormState>();
	String _name = "";
	int _price = 0;
	String _description = "";


@override
Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Tambah Produk Kamu Hari ini',
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        // Mengganti warna icon drawer menjadi putih
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      // Masukkan drawer sebagai parameter nilai drawer dari widget Scaffold
      drawer: const LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          		child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Name",
                          labelText: "Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            _name = value!;
                          });
                        },
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return "Nama tidak boleh kosong!";
                          }
                          return null;
                        },
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Price",
                          labelText: "Price",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            _price = int.tryParse(value!) ?? 0;
                          });
                        },
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return "Jumlah produk tidak boleh kosong!";
                          }
                          if (int.tryParse(value) == null) {
                            return "Jumlah produk harus berupa angka!";
                          }
                          return null;
                        },
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Description",
                          labelText: "Description",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            _description = value!;
                          });
                        },
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return "Deskripsi tidak boleh kosong!";
                          }
                          return null;
                        },
                      ),
                    ),

                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                                Theme.of(context).colorScheme.primary),
                          ),
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                                final response = await request.postJson(
                                    "http://127.0.0.1:8000/create-flutter/",
                                    jsonEncode(<String, String>{
                                        'name': _name,
                                        'price': _price.toString(),
                                        'description': _description,
                                    }),
                                );
                                if (context.mounted) {
                                    if (response['status'] == 'success') {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                        content: Text("Produk baru berhasil disimpan!"),
                                        ));
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(builder: (context) => MyHomePage()),
                                        );
                                    } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                            content:
                                                Text("Terdapat kesalahan, silakan coba lagi."),
                                        ));
                                    }
                                }
                            }
                        },
                          child: const Text(
                            "Save",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
              )
        ),
      ),
    );
  }
}