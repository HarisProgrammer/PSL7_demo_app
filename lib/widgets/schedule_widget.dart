import 'package:flutter/material.dart';
import 'package:psl_app_demo/models/schedule.dart';
class ScheduleWidget extends StatelessWidget {
  final Schedule schedule;
  const ScheduleWidget({Key? key,required this.schedule}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(30),
        ),
        width: double.infinity,
        height: 240,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(schedule.tarekh.toString(),style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1,
                  ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:const EdgeInsets.symmetric(vertical: 13,horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(schedule.flagOne),
                      )
                    ),
                    width: 100,
                    height: 80,
                  ),
                  Text(schedule.teamOne,style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white
                  ),),
                  const SizedBox(width: 15,),
                Row(
                  children: const [
                    Text("VS",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white
                    ),
                    ),
                  ],
                ),
                  const SizedBox(width: 15,),
                  Row(
                    children: [
                      Text(schedule.teamTwo,style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white
                      ),
                      ),
                      const SizedBox(width: 9),
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(schedule.flagTwo),
                            )
                        ),
                        width: 80,
                        height: 80,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12,),
            Text(schedule.venue,style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white
            ),
            ),
            const SizedBox(height: 14,),
            Column(
              children: [
                Text("Starting Time : ${schedule.time}",style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.white
                ),)
              ],
            )
          ],

        ),
      ),
    );
  }
}
