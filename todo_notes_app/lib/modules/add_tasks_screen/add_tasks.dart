import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo_notes_app/shared/colors.dart';
import 'package:ms_widgets/ms_widgets.dart';

class AddTasks extends StatelessWidget {
  const AddTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: kPrimaryBlue,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 20),
              child: Text('Add Tasks',
                  style: TextStyle(fontSize: 33, color: Colors.white)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 15),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Title',
                      style: TextStyle(fontSize: 25, color: kOrange))),
            ),
            defaultTextFormField(
              width: 370,
              height: 40,
              borderColor: kOrange,
              filledColor: Colors.transparent,
              borderRadius: BorderRadius.circular(8.0),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 15, top: 15),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Add to list',
                      style: TextStyle(
                          fontSize: 25, color: kOrange, fontFamily: 'Cairo'))),
            ),
            defaultTextFormField(
              width: 370,
              height: 40,
              borderColor: kOrange,
              filledColor: Colors.transparent,
              borderRadius: BorderRadius.circular(8.0),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 15, top: 15),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Date',
                      style: TextStyle(fontSize: 25, color: kOrange))),
            ),
            defaultTextFormField(
              width: 370,
              height: 40,
              borderColor: kOrange,
              filledColor: Colors.transparent,
              borderRadius: BorderRadius.circular(8.0),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 15, top: 15),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Discription',
                      style: TextStyle(fontSize: 25, color: kOrange))),
            ),
            defaultTextFormField(
              hintText: 'Add description here...',
              width: 370,
              height: 200,
              borderColor: Colors.transparent,
              filledColor: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            defaultButton(
              backgroundColor: kButtonBlue,
              text: 'Add Tasks',
              textStyle: TextStyle(color: Colors.white, fontSize: 20),
              decoration: BoxDecoration(
                color: kButtonBlue,
                borderRadius: BorderRadius.circular(15.0),
              ),
              borderColor: kPrimaryBlue,
              buttonHeight: 45,
              buttonWidth: 250,
              function: () {},
            ),
          ],
        ),
      ),
    );
  }
}
