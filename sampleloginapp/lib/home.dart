import 'package:flutter/material.dart';
import '/pages/user_details.dart';

class MyHomePageState extends StatelessWidget {
  String names;
  String starSign, favPet, dateBirth;

  MyHomePageState(
      {super.key,
      required this.favPet,
      required this.names,
      required this.dateBirth,
      required this.starSign});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Text('Edit Card',
            ),
            onPressed: () {
              // fix settings view to offerLiftView
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const EditCardView()));
            },
          ),
        
        ),
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
              const SizedBox(
                height: 5.0,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ListTile(
                        leading:
                            Image.asset('pictures/nature.png', height: 40, width: 40),
                        title: Text(names),
                        subtitle: Text(
                         starSign,
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      ListTile(
                        leading: const Icon(Icons.pets_rounded),
                        title: Text(
                          favPet,
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                        subtitle: Text(dateBirth),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.teal,
                              disabledForegroundColor:
                                  Colors.grey.withOpacity(0.38),
                            ),
                            onPressed: () {
                              // Perform some action
                            },
                            child: const Text('Confirm'),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.teal,
                              disabledForegroundColor:
                                  Colors.grey.withOpacity(0.38),
                            ),
                            onPressed: () {
                              // Perform some action
                            },
                            child: const Text('Delete'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ])));
  }
}
