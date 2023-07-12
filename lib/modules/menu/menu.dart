import 'package:exmaple/layout/homelayout.dart';
import 'package:exmaple/modules/BMIScreen/Bmi_Screen.dart';
import 'package:exmaple/modules/flowershop/FlowerScreen.dart';
import 'package:exmaple/modules/home/Home.dart';
import 'package:exmaple/modules/login/LoginScreen.dart';
import 'package:exmaple/modules/massengerscreen/Home_Screen.dart';
import 'package:exmaple/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[900],
      appBar: AppBar(
        backgroundColor: Colors.pink[700],
        leading: Icon(
          Icons.circle,
          color: Colors.grey.withOpacity(.5),
        ),
        titleSpacing: 1,
        title: Text(
          'Menu',
          style : TextStyle(
            fontSize: 25,
          ),
        ),



      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                color: Colors.white.withOpacity(.3),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: defaultButton(function: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>Flower()));
                  },
                      text:'Flower Screen' ,
                  color: Colors.red,
                  isUpper: true),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                color: Colors.white.withOpacity(.3),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: defaultButton(function: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) =>Checker()
                        )
                    );
                  },
                    text:'Checker Screen' ,
                    color: Colors.orangeAccent,
                  isUpper:true  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                color: Colors.white.withOpacity(.3),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: defaultButton(function: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>massengerScreen()));
                  },
                    text:'Massenger Screen' ,
                    color: Colors.blueAccent,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                color: Colors.white.withOpacity(.3),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: defaultButton(function: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>login()));
                  },
                    text:'Login Screen' ,
                    color: Colors.teal,
                  isUpper: true,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                color: Colors.white.withOpacity(.3),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: defaultButton(function: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>BmiScreen()));
                  },
                    text:'bmi calculator' ,
                    color: Colors.purple,
                  isUpper: true,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                color: Colors.white.withOpacity(.3),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: defaultButton(function: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>HomeLayout()));
                  },
                      text:'Todo App' ,
                      color: Colors.indigoAccent,
                      isUpper: true),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
