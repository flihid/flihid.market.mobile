import 'package:flihid_market_mobile/screens/product_entry_form.dart';
import 'package:flutter/material.dart';
import 'package:flihid_market_mobile/screens/menu.dart';


class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              children: [
                Text(
                  'Flihid Market',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  "Ayo berbelanja di Flihid Market!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),

          ListTile(
            leading: const Icon(Icons.mood),
            title: const Text('Tambah Item'),
            // Bagian redirection ke MoodEntryFormPage
            onTap: () {
              Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductEntryFormPage(),
              ));
            },
          ),
        ],
      ),
    );
  }
}