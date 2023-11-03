import 'package:flutter/material.dart';
import 'package:flutter_api_starter/models/sofi_api/product_selection.dart';
import 'package:flutter_api_starter/presentation/DetailScreen.dart';
import 'package:flutter_api_starter/repository/sofi_repository.dart';

import 'models/sofi_api/main_selection.dart';
import 'network/api_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SoFI API Test',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'SoFi API Exercise'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<MainSelection> mainSelectionList = [];
  bool ready = false;

  @override
  void initState() {
    super.initState();
    getSofiData();
  }

  Future<void> getSofiData() async {
    final api = ApiService();
    ProductSelection response = await SofiRepository(api: api).getData();
    mainSelectionList = response.mainSelections;
    setState(() {
      ready = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SoFi Interview 2',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: ListView.builder(
          itemCount: mainSelectionList.length ?? 0,
          itemBuilder: (BuildContext context, int index) {
            final selectionObject = mainSelectionList[index];
            return ListTile(
              leading: null,
              trailing: const Icon(Icons.arrow_right_sharp),
              title: Text(selectionObject.title),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailScreen(mainSelection: selectionObject),
                  )),
            );
          }),
    );
  }
}
