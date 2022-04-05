import 'package:flutter/material.dart';
import 'package:psl_app_demo/models/history_model.dart';
class HistoryWidget extends StatelessWidget {

  final MatchHistory matchHistory;
  const HistoryWidget({Key? key,required this.matchHistory}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
      child:Container(
          decoration: BoxDecoration(
            color: Colors.green,
            boxShadow: [
              BoxShadow(
                color: Colors.yellow,
                spreadRadius: 4,
                blurRadius: 4,
                offset: Offset(7,7),
              )
            ],
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
                    child: Text("Hosted By ${matchHistory.host} (${matchHistory.year})",style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1,
                    ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("winner",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1,
                    ),
                    ),
                    Text("Runner Up",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1,
                    ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Padding(
                padding:const EdgeInsets.symmetric(vertical: 13,horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(matchHistory.winnerFlag),
                          )
                      ),
                      width: 80,
                      height: 60,
                    ),
                    Text(matchHistory.winner,style: const TextStyle(
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
                        Text(matchHistory.runnerUp,style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white
                        ),
                        ),
                        const SizedBox(width: 9,),
                        Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/qg.png"),
                              )
                          ),
                          width: 80,
                          height: 60,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],

          ),
        ),
    );
  }
}
