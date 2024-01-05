import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:lab6_155/pages/hobby.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<Hobby> hobbies = [];
  List _selectedItem = [];

  @override
  void initState() {
    super.initState();
    hobbies = Hobby.getHoddy();
    print(hobbies);
  }

  List<Widget> creteChecbox() {
    List<Widget> widgets = [];
    for (var hb in hobbies) {
      widgets.add(CheckboxListTile(
        value: hb.value,
        onChanged: (value) {
          setState(() {
            hb.value = value!;
            if (value) {
              _selectedItem.add(hb.name);
            } else {
              _selectedItem.remove(hb.name);
            }
          });
        },
        title: Text(hb.name),
      ));
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("งานอดิเรก"),
          backgroundColor: Color.fromARGB(255, 145, 124, 8),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Text("กิจกรรมมีดังนี้"),
              Column(
                children: creteChecbox(),
              ),
              Text(
                _selectedItem.toString(),
                style: const TextStyle(
                    fontSize: 30, color: Color.fromARGB(255, 0, 255, 34)),
              )
            ],
          ),
        ));
  }
}
