import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psl_app_demo/screens/history_screen.dart';
import 'package:psl_app_demo/screens/schedule_screen.dart';
import 'package:psl_app_demo/screens/teams_screen.dart';
import 'package:psl_app_demo/screens/venues_screen.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children:[
            const DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text('HBL PSL',style: TextStyle(
                  fontSize: 17,
                ),
                ),
                accountEmail: Text("Mhharis12@gmail.com",style: TextStyle(
                  fontSize: 14,
                ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/logo.jpg"),
                ),
              ),
            ),
            ListTile(
              onTap: (){
                go(context, const ScheduleScreen());
              },
              leading: const Icon(
                CupertinoIcons.alarm,
                color: Colors.white,
              ),
              title: const Text("Schedule",style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
              ),
            ),

            ListTile(
              onTap: (){
                go(context, const VenuesScreen());
              },
              leading: const Icon(
                CupertinoIcons.location,
                color: Colors.white,
              ),
              title: const Text("Venues",style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
              ),
            ),

            ListTile(
              onTap: (){
                go(context, const TeamsScreen());
              },
              leading: const Icon(
                CupertinoIcons.group,
                color: Colors.white,
              ),
              title: const Text("Teams",style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
              ),
            ),

            ListTile(
              onTap: (){
                go(context,const HistoryScreen());
              },
              leading: const Icon(
                CupertinoIcons.search,
                color: Colors.white,
              ),
              title: const Text("History",style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
              ),
            ),

            const Divider(color: Colors.white,),
            ListTile(
              onTap: (){},
              leading: const Icon(
                Icons.star,
                color: Colors.white,
              ),
              title: const Text("Rate us",style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
              ),
            ),
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
