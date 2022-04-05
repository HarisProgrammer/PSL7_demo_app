import 'package:flutter/material.dart';
class HomeScreenWidget extends StatelessWidget {
  final IconData icon;
  final String str;
  final Color color;
  final VoidCallback? click;
  const HomeScreenWidget({Key? key,required this.icon,required this.str,required this.color,required this.click}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:click,
      child: Container(
        decoration:BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft:Radius.circular(20),
            bottomRight: Radius.circular(16),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(27),
          ),
          color:color,
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(icon,size: 80,color: Colors.white,),
            Text(str,style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),),
          ],
        ),
      ),
    );
  }
}
