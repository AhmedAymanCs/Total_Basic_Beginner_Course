import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bmi_result extends StatelessWidget {
 late String weight;
 late int  age;
 late double result;
 Bmi_result({
   required this.result
}
);

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.deepPurple[800],
      appBar: AppBar(
        backgroundColor: Colors.red,
        // leading: IconButton(
        //   onPressed: ()
        //   {
        //     Navigator.pop(context);
        //   },
        //   icon: Icon(
        //     Icons.arrow_back_ios
        //   ),
        // ),
         leading: SizedBox(),
        centerTitle: true ,
        title: Text(
            'BMI Result',
          style: TextStyle(
            fontSize: 30
          ),

        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
      color: Colors.grey.withOpacity(.2),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  color: Colors.white.withOpacity(.2),
                  width: double.infinity,
                  height: 250,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          '${checkBmi()}',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: SetColor(),
                          ),
                        ),
                        Text(
                          '${result.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontSize: 70,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Normal BMI Range',
                          style: TextStyle(
                            fontSize: 30,
                            //fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                          ),
                        ),
                        Text(
                          '18.5 - 25',
                          style: TextStyle(
                            fontSize: 30,
                            //fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
          ,
          Container(
            width:double.infinity,
            color: Colors.red,
            child: MaterialButton(
                onPressed:()
                {
                  Navigator.pop(context);
                } ,
                child: Text(
                  'RE-Calculate',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
          )
        ],
      ),
    );
  String checkBmi()
  {
    if (result<18.5)
      return 'Under Weight';
else if (result>=18.5&&result<=24.9)
  return 'Normal';
else if (result>=25&&result<=29.9)
  return 'Over Weight';
    else if (result>=30&&result<=34.9)
      return 'Oberse';
    else
      return 'Extremely Oberse';
  }
  Color SetColor()
  {
    if (result<18.5)
      return Colors.blue;
    else if (result>=18.5&&result<=24.9)
      return Colors.green;
    else if (result>=25&&result<=29.9)
      return Colors.yellow;
    else if (result>=30&&result<=34.9)
      return Colors.orange;
    else
      return Colors.red;
  }

}
