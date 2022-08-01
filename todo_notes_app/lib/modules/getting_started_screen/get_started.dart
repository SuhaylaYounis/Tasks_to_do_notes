import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo_notes_app/shared/colors.dart';
import 'package:ms_widgets/ms_widgets.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: kPrimaryBlue,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 70,right: 5, ),
                    child: Image.asset('assets/images/NoPath - Copy (32).png',),
                  ),
                  Text('Tasks',style:TextStyle(fontSize: 33, color: Colors.white)),
                ],
              ),
            ),
            Image.asset('assets/images/9069 [Converted].png', width: 270,height: 270,),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20  ),
              child: Text("Welcome to tasks",style:TextStyle(fontSize: 25, color: Colors.white)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50,  ),
              child: Text('An application to write your daily personal, work and other tasks.',
                  style:TextStyle(fontSize: 22, color: Colors.white)),
            ),
            Padding(
              padding: const EdgeInsets.only(top:40.0),
              child: defaultButton( backgroundColor:kButtonBlue,
                text: 'Get Started',
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),
                decoration: BoxDecoration(color: kButtonBlue, borderRadius: BorderRadius.circular(15.0),),
                borderColor: kPrimaryBlue,
                buttonHeight:55,
                buttonWidth: 250,
                function: (){
                },

              ),
            ),


          ],
        ),
      ),
    );
  }
}

