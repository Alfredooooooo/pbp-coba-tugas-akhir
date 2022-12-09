import 'package:coba_tugas_akhir/pages/home_page.dart';
import 'package:flutter/material.dart';

class ExternalDrawer extends StatefulWidget {
  const ExternalDrawer({super.key});

  @override
  State<StatefulWidget> createState() => _ExternalDrawer();
}

class _ExternalDrawer extends State<ExternalDrawer> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: Column(
        children: [
          ListTile(
            title: const Text("Main"),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
          ),
        ],
      ),
    );
  }
}
