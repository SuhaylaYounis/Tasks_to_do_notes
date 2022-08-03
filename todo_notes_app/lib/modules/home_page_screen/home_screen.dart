import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:todo_notes_app/shared/colors.dart';
import 'package:ms_widgets/ms_widgets.dart';
import 'package:todo_notes_app/shared/components.dart';

import '../../models/taskModel.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  bool valuefirst = false;
  bool valuesecond = false;
  List<TaskModel> items = List.generate(
      5,
      (index) => TaskModel(
          active: true,
          title: 'Learn HTML',
          date: '2022-8-10',
          description: 'Learn HTML and Study English')).toList();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kLightGrey,
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryBlue,
        onPressed: () {},
        child: Image.asset(
          "assets/images/NoPath - Copy (61).png",
        ),
      ),
      body: Material(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: height * 0.1,
                    width: width * 0.7,
                    decoration: BoxDecoration(
                        color: kPrimaryBlue,
                        borderRadius: BorderRadius.circular(30)),
                    // TODO Header
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Simply control your time",
                          style: TextStyle(color: Colors.white, fontSize: 23),
                        ),
                        Image.asset(
                          'assets/images/9069 [Converted].png',
                          width: 40,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Tasks',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 26,
                      color: kPrimaryBlue,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) => Item(
                      title: items[index].title,
                      active: items[index].active,
                      /// DELETE ICON ON CLICK
                      deleteClick: () {
                        AwesomeDialog(
                            width: width * 0.6,
                            context: context,
                            animType: AnimType.SCALE,
                            dialogType: DialogType.WARNING,
                            body: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Do you want to delete task "),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                ],
                              ),
                            ),

                            btnCancelOnPress: () {
                              Navigator.pop(context);
                            },
                            btnOkOnPress: () {
                              Navigator.pop(context);
                            }).show();
                      },
                      ///EDIT ICON ON CLICK
                      editClick: () {
                        AwesomeDialog(
                          width: width * 0.6,
                          context: context,
                          animType: AnimType.SCALE,
                          dialogType: DialogType.WARNING,
                          body: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                defaultTextFormField(
                                  borderRadius: BorderRadius.circular(20),
                                  filledColor: Colors.white,
                                  borderColor: Colors.grey,
                                  hintColor: Colors.black,
                                  width: width * 0.5,
                                  enableEditing: false,
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                  hintText: items[index].title,
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                defaultTextFormField(
                                  borderRadius: BorderRadius.circular(20),
                                  filledColor: Colors.white,
                                  borderColor: Colors.grey,
                                  hintColor: Colors.black,
                                  width: width * 0.5,
                                  enableEditing: false,
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                  hintText: items[index].description,
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                defaultTextFormField(
                                  borderRadius: BorderRadius.circular(20),
                                  filledColor: Colors.white,
                                  borderColor: Colors.grey,
                                  hintColor: Colors.black,
                                  prefixWidget: Icon(Icons.date_range_outlined),
                                  width: width * 0.5,
                                  enableEditing: false,
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                  hintText: items[index].date,
                                ),
                              ],
                            ),
                          ),
                          btnOk: SizedBox(
                            height: 40,
                          ),
                        ).show();
                      },
                      onChange: (bool? val) {},

                      /// EYE VIEW ICON ON CLICK
                      viewClick: () {
                        AwesomeDialog(
                          width: width * 0.6,
                          context: context,
                          animType: AnimType.SCALE,
                          dialogType: DialogType.WARNING,
                          body: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                defaultTextFormField(
                                  borderRadius: BorderRadius.circular(20),
                                  filledColor: Colors.white,
                                  borderColor: Colors.grey,
                                  hintColor: Colors.black,
                                  width: width * 0.5,
                                  enableEditing: false,
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                  hintText: items[index].title,
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                defaultTextFormField(
                                  borderRadius: BorderRadius.circular(20),
                                  filledColor: Colors.white,
                                  borderColor: Colors.grey,
                                  hintColor: Colors.black,
                                  width: width * 0.5,
                                  enableEditing: false,
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                  hintText: items[index].description,
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                defaultTextFormField(
                                  borderRadius: BorderRadius.circular(20),
                                  filledColor: Colors.white,
                                  borderColor: Colors.grey,
                                  hintColor: Colors.black,
                                  prefixWidget: Icon(Icons.date_range_outlined),
                                  width: width * 0.5,
                                  enableEditing: false,
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                  hintText: items[index].date,
                                ),
                              ],
                            ),
                          ),
                          btnOk: SizedBox(
                            height: 40,
                          ),
                        ).show();
                      },
                    ),
                    separatorBuilder: (context, index) => SizedBox(
                      height: 3,
                    ),
                    itemCount: items.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
