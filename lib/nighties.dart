import 'package:flutter/material.dart';

class Nighties extends StatefulWidget {
  const Nighties({Key? key}) : super(key: key);

  @override
  State<Nighties> createState() => _NightiesState();
}

class _NightiesState extends State<Nighties> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Nighties '),
      ),
      body: Center(
        child: Text(
          'Nighties Section',
          style: TextStyle(
              color: Color.fromARGB(255, 218, 14, 157),
              fontSize: 30),
        ),
      ),
    );
  }
}
