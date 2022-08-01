import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo_notes_app/shared/colors.dart';
import 'package:ms_widgets/ms_widgets.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return
       Material(
        color: kPrimaryBlue,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                    'Add Notes',
                    style: TextStyle(fontSize: 33, color: Colors.white)),
              ),
              SizedBox(
                child: defaultTextFormField(
                  hintText: 'العنوان ',
                  width: width * 0.8,
                  borderColor: Colors.transparent,
                  lineHeight: 10,
                  filledColor: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              Center(
                child: defaultButton(
                  backgroundColor: kButtonBlue,
                  text: 'Save Notes',
                  textStyle: TextStyle(color: Colors.white, fontSize: 20),
                  borderRadius: BorderRadius.circular(15.0),
                  borderColor: kPrimaryBlue,
                  buttonHeight: height*0.1,
                  buttonWidth: width*0.4,
                  function: () {},
                ),
              ),
            ],
          ),
        ),
      );

  }
}
