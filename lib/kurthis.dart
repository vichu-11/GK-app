import 'package:flutter/material.dart';

class Kurthis extends StatefulWidget {
  const Kurthis({Key? key}) : super(key: key);

  @override
  State<Kurthis> createState() => _KurthisState();
}

class _KurthisState extends State<Kurthis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Kurthis'),
      ),
      body: Center(
        child: Text(
          'Kurthis Section',
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
