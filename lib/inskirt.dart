import 'package:flutter/material.dart';

class Inskirt extends StatefulWidget {
  const Inskirt({Key? key}) : super(key: key);

  @override
  State<Inskirt> createState() => _InskirtState();
}

class _InskirtState extends State<Inskirt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 164, 122, 237),
     appBar: AppBar(
        centerTitle: true,
        title: Text('Inskirt'),
      ),
      body: Center(
        child: Text(
          'Inskirt Section',
          style: TextStyle( 
              color: Color.fromARGB(255, 14, 218, 102),
              fontSize: 30),
        ),
      ),
    );
  }
}



