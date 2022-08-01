import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo_notes_app/shared/colors.dart';
import 'package:ms_widgets/ms_widgets.dart';

class Notes extends StatelessWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: kPrimaryBlue,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 20),
              child: Text('Add Notes',
                  style: TextStyle(fontSize: 33, color: Colors.white)),
            ),
            defaultTextFormField(
              hintText: 'العنوان ',
              width: 370,
              height: 500,
              borderColor: Colors.transparent,
              filledColor: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            defaultButton(
              backgroundColor: kButtonBlue,
              text: 'Save Notes',
              textStyle: TextStyle(color: Colors.white, fontSize: 20),
              decoration: BoxDecoration(
                color: kButtonBlue,
                borderRadius: BorderRadius.circular(15.0),
              ),
              borderColor: kPrimaryBlue,
              buttonHeight:55,
              buttonWidth: 250,
              function: () {},
            ),
          ],
        ),
      ),
    );
  }
}
