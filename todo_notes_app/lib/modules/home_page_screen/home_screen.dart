import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:todo_notes_app/shared/colors.dart';
import 'package:ms_widgets/ms_widgets.dart';
import 'package:todo_notes_app/shared/components.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  bool valuefirst = false;
  bool valuesecond = false;

  @override
  Widget build(BuildContext context) {
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
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.7,
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
                      title: 'Learn HTML',
                      active: true,
                      deleteClick: () {

                      },
                      editClick: () {},
                      onChange: (bool? val) {},
                      viewClick: () {},
                    ),
                    separatorBuilder: (context, index) => SizedBox(
                      height: 3,
                    ),
                    itemCount: 13,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
