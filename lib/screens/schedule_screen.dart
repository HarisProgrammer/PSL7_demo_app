import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:psl_app_demo/models/schedule.dart';
import 'package:psl_app_demo/widgets/schedule_widget.dart';
import 'package:flutter/services.dart';
class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async{
    final scheduleJson = await rootBundle.loadString("assets/files/pslt20.json");
    final decodeData = jsonDecode(scheduleJson);
    var scheduleData = decodeData["schedule"];
    ScheduleModel.data = List.from(scheduleData).map<Schedule>((schedule) =>Schedule.fromMap(schedule)).toList();

    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Schedule"),
      ),
      body:(ScheduleModel.data!=null && ScheduleModel.data.isNotEmpty)? ListView.builder(
          itemCount:ScheduleModel.data.length,
          itemBuilder:(context,index){
            return ScheduleWidget(schedule:ScheduleModel.data[index],);
          }
      ):const Center(child: CircularProgressIndicator(),),
    );
  }
}
