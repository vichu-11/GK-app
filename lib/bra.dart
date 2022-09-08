import 'package:flutter/material.dart';
import 'package:gk_app/nighties.dart';
import 'package:intl/intl.dart';
import 'tenpcs.dart';
import '12pcs.dart';
import '6pcs.dart';

class Bra extends StatefulWidget {
  const Bra({Key? key}) : super(key: key);
  @override
  State<Bra> createState() => _BraState();
}

class _BraState extends State<Bra> {
  TextEditingController dateInput = TextEditingController();
  String value = "Size";
  List<String> items = ["Size", "28", "30", "32", "34", "36", "38"];
  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Bra '),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 35),
                  child: Text(
                    'Order Date :',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 100,
                    width: 250,
                    child: Center(
                        child: TextField(
                      controller: dateInput,
                      //editing controller of this TextField
                      decoration: InputDecoration(
                          icon: Icon(Icons.calendar_today), //icon of text field
                          hintText: "Enter Today Date" //label text of field
                          ),
                      readOnly: true,
                      //set it true, so that user will not able to edit text
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1950),
                            //DateTime.now() - not to allow to choose before today.
                            lastDate: DateTime(2100));

                        if (pickedDate != null) {
                          print(
                              pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                          String formattedDate =
                              DateFormat('yyyy-MM-dd').format(pickedDate);
                          print(
                              formattedDate); //formatted date output using intl package =>  2021-03-16
                          setState(() {
                            dateInput.text =
                                formattedDate; //set output date to TextField value.
                          });
                        } else {}
                      },
                    )),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      color: Colors.white,
                    )),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 117),
                  child: Text(
                    'Size :',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 50,
                    width: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                        color: Colors.white),
                    child: DropdownButton(
                        value: value,
                        items: items.map((String items) {
                          return DropdownMenuItem(
                              child: Text(items), value: items);
                        }).toList(),
                        onChanged: (String? subha) {
                          setState(() {
                            value = subha!;
                          });
                        })),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 200,
                  child: Text(
                    'Company Name :',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                Container(
                  height: 150,
                  width: 200,
                  child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.business),
                        hintText: "Company Name",
                      )),
                ),
              ],
            ),
            Container(
              child: Text(
                'Quantity in per box',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Nighties()));
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Center(
                      child: Text(
                        '12 pcs',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      border: Border.all(
                        color: Color.fromARGB(255, 54, 187, 244),
                        width: 5,
                      ),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 20)),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Nighties()));
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Center(
                      child: Text(
                        '10 pcs',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      border: Border.all(
                        color: Color.fromARGB(255, 54, 187, 244),
                        width: 5,
                      ),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 20)),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Nighties()));
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Center(
                      child: Text(
                        '6 pcs',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      border: Border.all(
                        color: Color.fromARGB(255, 54, 187, 244),
                        width: 5,
                      ),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
