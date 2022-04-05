import 'package:flutter/material.dart';
import 'package:psl_app_demo/models/venue_model.dart';
class VenueWidget extends StatelessWidget {
  final Venue venue;
  const VenueWidget({Key? key,required this.venue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Column(
            children: [
              Card(
                child: Container(
                  width: double.infinity,
                  height: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.yellow.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 5,
                          offset: const Offset(7,7),
                        )
                      ]
                  ),
                  child: Column(
                    children: [
                     Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(venue.city,style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text(venue.stadium,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                      SizedBox(height: 10,),
                      Expanded(child: Container(
                        decoration:BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(venue.image),
                              fit: BoxFit.cover,
                            )
                        ),
                      ))
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
