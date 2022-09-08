

import 'package:flutter/material.dart';

class Bra extends StatefulWidget {
  const Bra({Key? key}) : super(key: key);

  @override
  State<Bra> createState() => _BraState();
}

class _BraState extends State<Bra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Bra '),
      ),
      body: Center(
        child: Text(
          'Bra Section',
          style: TextStyle(
              color: Color.fromARGB(
                255,
                157,
                14,
                218,
              ),
              fontSize: 30),
        ),
      ),
    );
  }
}
