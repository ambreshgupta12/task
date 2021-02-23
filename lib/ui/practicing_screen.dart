import 'package:flutter/material.dart';
import 'package:flutter_task/res/colors.dart';

class PracticingScreen extends StatefulWidget {
  @override
  _PracticingScreenState createState() => _PracticingScreenState();
}

class _PracticingScreenState extends State<PracticingScreen> {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(

      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: size.width*0.60,
                height: 255,
                decoration: BoxDecoration(
                 gradient: LinearGradient(
                   begin: Alignment.centerLeft,
                   end: Alignment.centerRight,
                   colors: [
                  KColor.powderBlueColor,
                  KColor.vikingColor,
                   ]
                 )
                ),
              ),
              Container(
                width: size.width*0.40,
                height: 255,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          KColor.vikingColor,
                          KColor.vikingColor,
                          KColor.scooterColors,
                          KColor.scooterColor,
                        ]
                    )
                ),
              ),
            ],
          )
        ]
      ),
    );
  }
}
