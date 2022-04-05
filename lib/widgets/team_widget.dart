import 'package:flutter/material.dart';
import 'package:psl_app_demo/models/team_model.dart';
class TeamWidget extends StatelessWidget {

  final Team team;
  const TeamWidget({Key? key,required this.team}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border:Border.all(color: Colors.black),
        ),
        height: 200,
        child: Card(
          child: Row(
            children: [
           Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(team.fullName,style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),
              ),
              const SizedBox(width: 10,),
              Expanded(child:  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset(team.flag),
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
