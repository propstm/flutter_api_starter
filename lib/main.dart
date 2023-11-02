import 'package:flutter/material.dart';
import 'package:flutter_api_starter/models/nhl_api/roster_response.dart';
import 'package:flutter_api_starter/repository/nhl_repository.dart';

import 'models/nhl_api/player_info.dart';
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
      title: 'Flutter API Starter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Red Wings Roster API Exercise'),
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
  late List<PlayerInfo> roster = [];
  bool ready = false;

  @override
  void initState() {
    super.initState();
    getTeamRoster();
  }

  Future<void> getTeamRoster() async {
    final api = ApiService();
    RosterResponse response = await NhlRepository(api: api).getRoster();
    roster = response.roster;
    setState(() {
      ready = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Red Wings Roster',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
          itemCount: roster.length ?? 0,
          itemBuilder: (BuildContext context, int index) {
            final playerObject = roster[index];
            return ListTile(
              leading: null,
              trailing: const Icon(Icons.arrow_right_sharp),
              title: Text(playerObject.person.fullName),
            );
          }),
    );
  }
}
