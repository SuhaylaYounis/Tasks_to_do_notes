import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo_notes_app/shared/colors.dart';
import 'package:ms_widgets/ms_widgets.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Material(
      color: kPrimaryBlue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/NoPath - Copy (32).png',
              ),
              SizedBox(
                width: 15,
              ),
              Text('Tasks',
                  style: TextStyle(fontSize: 33, color: Colors.white)),
            ],
          ),
          Image.asset(
            'assets/images/9069 [Converted].png',
            width: width * 0.5,
            height: height * 0.5,
          ),
          Text("Welcome to tasks",
              style: TextStyle(fontSize: 25, color: Colors.white)),
          Center(
            child: Text(
                'An application to write your daily personal, work and other tasks.',
                style: TextStyle(fontSize: 22, color: Colors.white)),
          ),
          defaultButton(
            backgroundColor: kButtonBlue,
            text: 'Get Started',
            textStyle: TextStyle(color: Colors.white, fontSize: 20),
            borderRadius: BorderRadius.circular(15.0),
            borderColor: kPrimaryBlue,
            buttonHeight: height * 0.1,
            buttonWidth: width * 0.4,
            function: () {},
          ),
        ],
      ),
    );
  }
}
