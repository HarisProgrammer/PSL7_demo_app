import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:psl_app_demo/models/team_model.dart';
import 'package:psl_app_demo/widgets/team_widget.dart';
class TeamsScreen extends StatefulWidget {
  const TeamsScreen({Key? key}) : super(key: key);

  @override
  State<TeamsScreen> createState() => _TeamsScreenState();
}

class _TeamsScreenState extends State<TeamsScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async{
    final scheduleJson = await rootBundle.loadString("assets/files/pslt20.json");
    final decodeData = jsonDecode(scheduleJson);
    var teamData = decodeData["teams"];
    TeamModel.data = List.from(teamData).map<Team>((team) =>Team.fromMap(team)).toList();

    setState(() {

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Team"),
        backgroundColor: Colors.orange,
      ),
      body:ListView.builder(
          itemCount: TeamModel.data.length,
          itemBuilder:(context,index){
            return TeamWidget(team: TeamModel.data[index]);
          }
      ),

    );
  }
}
