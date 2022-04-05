import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:psl_app_demo/models/venue_model.dart';
import 'package:psl_app_demo/widgets/venue_widget.dart';
class VenuesScreen extends StatefulWidget {
  const VenuesScreen({Key? key}) : super(key: key);

  @override
  State<VenuesScreen> createState() => _VenuesScreenState();
}

class _VenuesScreenState extends State<VenuesScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async{
    final scheduleJson = await rootBundle.loadString("assets/files/pslt20.json");
    final decodeData = jsonDecode(scheduleJson);
    var scheduleData = decodeData["venues"];
    VenueModel.data = List.from(scheduleData).map<Venue>((schedule) =>Venue.fromMap(schedule)).toList();

    setState(() {

    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Venues"),
        backgroundColor: Colors.redAccent,
      ),
      body:ListView.builder(
          itemCount:VenueModel.data.length,
          itemBuilder:(context,index){
            return VenueWidget(venue:VenueModel.data[index],);
          }
      )

    );
  }
}
