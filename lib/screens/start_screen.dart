import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'home_screen.dart';
class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {

  final _formKey = GlobalKey<FormState>();
  bool changeBtn = false;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text("WELCOME SCREEN"),
        // ),
        body:Form(
          key:_formKey,
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.red,
                  Colors.yellow,
                  Colors.green,
                  Colors.blue,
                  Colors.purple,
                ],
                begin:Alignment.bottomCenter,
              ),
            ),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("HBL PSL",style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color:changeBtn ? Colors.red: Colors.white,
                ),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Team Name",
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Please Enter Any Name";
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 40,),
                AnimatedContainer(
                  duration: const Duration(seconds: 2),
                   width:changeBtn ? 20: 130,
                   height: 50,
                  decoration: BoxDecoration(
                    borderRadius:changeBtn ? BorderRadius.circular(50):BorderRadius.circular(20),
                  ),
                  child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary:changeBtn?Colors.green:Colors.yellow,
                      onPrimary: Colors.black,
                    ),
                    onPressed: ()async{
                      if(_formKey.currentState!.validate()){
                       setState(() {
                         changeBtn = true;
                       });
                       await Future.delayed(Duration(seconds: 1));
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return const HomeScreen();
                        }));
                      }
                      },
                    child:changeBtn?const Icon(Icons.done_outline_rounded,color:Colors.white,):const Text("Continue..",
                      style: TextStyle(
                      fontSize:18,
                    ),
                    ),
                  ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
