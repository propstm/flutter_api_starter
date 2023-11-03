import 'package:flutter/material.dart';
import 'package:flutter_api_starter/models/sofi_api/main_selection.dart';

class DetailScreen extends StatelessWidget {
  MainSelection mainSelection;
  DetailScreen({super.key, required this.mainSelection});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detail Screen',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(mainSelection.title),
        ));
  }
}
