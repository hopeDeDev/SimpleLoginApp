import 'dart:core';

import 'package:flutter/material.dart';
import '/home.dart';
import '../../../main.dart';

class EditCardView extends StatefulWidget {
  const EditCardView({super.key});

  @override
  State<EditCardView> createState() => EditCard();
}

class EditCard extends State<EditCardView> {
  final TextEditingController _names = TextEditingController();
  final TextEditingController _starSign = TextEditingController();
  final TextEditingController _dateBirth = TextEditingController();
  final TextEditingController _favPet = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MyHomePageState(names: _names.text, dateBirth: _dateBirth.text, favPet: _favPet.text, starSign: _starSign.text)));
            },
          ),
          title: const Text('Input Your Lovely Details'),
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _names,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Full names'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _dateBirth,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Date of Birth'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _starSign,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'StarSighn'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _favPet,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Favourite pet'),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) =>  MyHomePageState( names: _names.text, dateBirth: _dateBirth.text, favPet: _favPet.text, starSign: _starSign.text,)));
              },
              child: const Text('Create Card'))
        ]));
  }
}
