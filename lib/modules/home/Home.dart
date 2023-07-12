import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Checker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          elevation: 30,
          shadowColor: Colors.deepOrange,
          title: Text(
            'Checker',
            textScaleFactor: 1.4,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Text(
                'Notfication',
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 6,
                ),
                textScaleFactor: 1,
              ),
            ),
            Icon(
              Icons.notification_add,
            ),
          ],
        ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
    children: [

      Container(
        width: 200,
        height: 200,

        child: Stack(
          //alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              padding: EdgeInsetsDirectional.only(start: 10),
              child: Text(
                'You Are Offline Now',

                style: TextStyle(
                  color: Colors.red ,
                  fontSize: 20 ,
                  height: 3 ,
                ),
              ),
            ),
            Image(
              image: NetworkImage('https://thumbs.dreamstime.com/b/online-text-white-31010095.jpg'),
              height: 150,
              width: 200,
              fit: BoxFit.cover,

            ),
            Container(
              width: double.infinity,
              color: Colors.amberAccent,
              padding: EdgeInsetsDirectional.only(
                top:5,
                bottom: 5,
              ),
              child: Text(
                'Your State',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.green ,
                ),
              ),
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
