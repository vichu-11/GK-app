import 'package:flutter/material.dart';

class Drawer extends StatelessWidget {
  const Drawer({Key? key, required Column child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        const DrawerHeader(
          child: Text('GK Textiles'),
          decoration: BoxDecoration(
            color: Colors.purple,
          ),
        ),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text(' Home '),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.shopping_bag),
          title: const Text(' My Orders '),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.help),
          title: const Text(' Help'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text(' Account '),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    ));
  }
}
