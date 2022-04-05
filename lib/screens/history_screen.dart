import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:psl_app_demo/models/history_model.dart';
import 'package:psl_app_demo/widgets/history_widget.dart';
class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async{
    final pslHistoryJson = await rootBundle.loadString("assets/files/pslt20.json");
    final decodeData = jsonDecode(pslHistoryJson);
    var scheduleData = decodeData["history"];
    HistoryModel.data = List.from(scheduleData).map<MatchHistory>((pslHistory) =>MatchHistory.fromMap(pslHistory)).toList();

    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("History"),
        backgroundColor: Colors.green,
      ),
      body:ListView.builder(
          itemCount:HistoryModel.data.length ,
          itemBuilder:(context,index){
            return HistoryWidget(matchHistory:HistoryModel.data[index]);
          }
      )
    );
  }
}
