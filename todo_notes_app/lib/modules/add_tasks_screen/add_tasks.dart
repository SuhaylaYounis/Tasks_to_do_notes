import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo_notes_app/shared/colors.dart';
import 'package:ms_widgets/ms_widgets.dart';
import 'package:date_time_picker/date_time_picker.dart';

class AddTasks extends StatelessWidget {
   AddTasks({Key? key}) : super(key: key);
  var dateinput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Material(
      color: kPrimaryBlue,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                  'Add Tasks',
                  style: TextStyle(fontSize: 33, color: Colors.white)),
            ),
            Text('Title',
                style: TextStyle(fontSize: 25, color: kOrange)),
            defaultTextFormField(
              hintText: "Enter title",
              inputColor: Colors.white,
              hintColor: Colors.white,
              width: width*0.8,
              height: height*0.1,
              borderColor: kOrange,
              filledColor: Colors.transparent,
              borderRadius: BorderRadius.circular(8.0),
            ),
            Text('Add to list',
                style: TextStyle(
                    fontSize: 25, color: kOrange, fontFamily: 'Cairo')),
            defaultTextFormField(
              hintText: "Enter list",
              inputColor: Colors.white,
              hintColor: Colors.white,
              width: width*0.8,
              height: height*0.1,
              borderColor: kOrange,
              filledColor: Colors.transparent,
              borderRadius: BorderRadius.circular(8.0),
            ),
            Text('Date',
                style: TextStyle(fontSize: 25, color: kOrange)),
            defaultTextFormField(

              hintText: "Enter Date",
              textFieldController: dateinput,
              prefixWidget:DateTimePicker(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.calendar_today,color: Colors.white),
                ),
                initialValue: '',
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                onSaved: (val) {
                  dateinput.text=val.toString();
                },
              ),
              inputColor: Colors.white,
              hintColor: Colors.white,
              onSubmit: (){},
              width: width*0.8,
              height: height*0.1,
              borderColor: kOrange,
              filledColor: Colors.transparent,
              borderRadius: BorderRadius.circular(8.0),
            ),
            Text('Discription',
                style: TextStyle(fontSize: 25, color: kOrange)),
            defaultTextFormField(
              hintText: 'Add description here...',
              width: width * 0.7,
              lineHeight: 5,
              borderColor: Colors.transparent,
              filledColor: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            Center(
              child: defaultButton(
                isUpperCase: true,
                backgroundColor: kButtonBlue,
                text: 'Add Tasks',
                borderRadius: BorderRadius.circular(15.0),
                textStyle: TextStyle(color: Colors.white, fontSize: 20),
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
