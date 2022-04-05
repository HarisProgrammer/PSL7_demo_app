import 'package:flutter/material.dart';
import 'package:psl_app_demo/screens/schedule_screen.dart';
import 'package:psl_app_demo/screens/start_screen.dart';
import 'package:psl_app_demo/screens/teams_screen.dart';
import 'package:psl_app_demo/screens/venues_screen.dart';
import 'package:psl_app_demo/widgets/home_screen_widget.dart';
import 'package:psl_app_demo/widgets/my_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

import 'history_screen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:Colors.deepPurpleAccent,
      appBar: AppBar(
        title: const Text("Home Screen"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.star),)
        ],
      ),
      drawer:const MyDrawer(),
      body:Padding(
        padding: const EdgeInsets.symmetric(vertical: 45,horizontal: 10),
        child: GridView(
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 14,
            mainAxisSpacing: 20,
          ),
          children:[
            HomeScreenWidget(icon: Icons.alarm_add, str:"Schedule",color: Colors.deepPurple,click:(){
              go(context, const ScheduleScreen());
            },),
            HomeScreenWidget(icon: Icons.location_on_outlined, str:"Venues",color:Colors.redAccent,click:(){
              go(context, const VenuesScreen());
            },),
            HomeScreenWidget(icon: Icons.group, str: "Teams", color: Colors.orange,click:(){
              go(context, const TeamsScreen());
            },),
            HomeScreenWidget(icon: Icons.search_off_outlined, str: "History", color:Colors.green,click:(){
              go(context, const HistoryScreen());
            },),
            HomeScreenWidget(icon: Icons.video_call_outlined, str: "Highlights", color:Colors.blue,click:(){},),
            HomeScreenWidget(icon: Icons.live_tv, str: "Live Score", color:Colors.amber,click:() async {
              const _url = "https://livescore.cricketschedule.com/psl-live-score/";
              if(await canLaunch(_url)){
                launch(_url);
              }

            },),
          ],
        ),
      ),
    );
  }

  void go(BuildContext context,Widget widget){
    Navigator.of(context).push(MaterialPageRoute(builder: (context){
      return widget;
    }));
  }
}
