import 'package:flutter/material.dart';
import 'package:quizzy/Quebank.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'Q.dart';

void main(){
  runApp(

    myapp(),
  );




}

Quebank qb = Quebank();
class myapp extends StatefulWidget {
  @override
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {
  List<Icon> s1=[



  ];


void check(bool c){

  bool answer= qb.getans();
  setState(() {
    if (qb.isFinished()== true) {
      //TODO Step 4 Part A - show an alert using rFlutter_alert,

      //This is the code for the basic alert from the docs for rFlutter Alert:
      //Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.").show();

      //Modified for our purposes:
      Alert(
        context: context,
        title: 'Finished!',
        desc: 'You\'ve reached the end of the quiz.',
      ).show();

      //TODO Step 4 Part C - reset the questionNumber,
      qb.reset();

      //TODO Step 4 Part D - empty out the scoreKeeper.
      s1 = [];
    }else {
      if (answer == c) {
        s1.add(
          Icon(
            Icons.check,
            color: Colors.green,
          ),
        );
      }
      else {
        s1.add(
            Icon(
              Icons.close,
              color: Colors.red,
            )
        );
      }

      qb.getNo();
    }

  });
}


  @override







  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor:Colors.blueGrey[800],
          title:Text("THE QUIZZY"),


        ),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                 flex:5,
                  child:Padding(
              padding: EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        qb.myque(),
                          textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                        ),

                      ),
                    ),

                  ),


                ),
                Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child:FlatButton(
                    color: Colors.green,
                  child:  Text("TRUE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),

                  ),
                    onPressed: (){
                    check(true);

                    },

                  ),
                ),


                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child:FlatButton(
                      color: Colors.pink,
                      child:  Text("FALSE",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),

                      ),
                      onPressed: (){
                      check(false);



                        },
                        ),


                    ),
                  ),



             Row(
               children: s1,



             ),



              ],


        ),

      ),




    );
  }
}

