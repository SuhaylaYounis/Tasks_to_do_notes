import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:todo_notes_app/shared/colors.dart';
import 'package:ms_widgets/ms_widgets.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  bool valuefirst = false;
  bool valuesecond = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: kLightGrey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 90.0,
              ),
              child: Card(
                elevation: 10.0,
                color: kLightGrey,
                //clipBehavior:Clip.antiAliasWithSaveLayer ,
                child: Container(
                  //clipBehavior:Clip.antiAliasWithSaveLayer ,
                  height: 60,
                  width: 330,
                  decoration: BoxDecoration(
                    color: kPrimaryBlue,
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/9069 [Converted].png",
                      ),
                      alignment: Alignment.centerRight,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, top: 20),
                    child: Text(
                      "Simply control your time",
                      style: TextStyle(color: Colors.white, fontSize: 23),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Tasks',
                  style: TextStyle(
                      fontSize: 26,
                      color: kPrimaryBlue,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              //TODO Location
              child: Container(
                height: 50,
                width: 370,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RoundCheckBox(
                        onTap: (selected) {},
                        isChecked: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Learn HTML",
                        style: TextStyle(
                          fontSize: 24,
                          color: kPrimaryBlue,
                          fontFamily: 'Cairo',
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove_red_eye_outlined),
                        color: kButtonBlue,
                        iconSize: 30,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        onPressed: () {},
                        icon:
                            Image.asset('assets/images/NoPath - Copy (40).png'),
                        iconSize: 10,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: IconButton(
                        onPressed: () {},
                        icon:
                            Image.asset('assets/images/NoPath - Copy (39).png'),
                        iconSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              //TODO Location
              child: Container(
                height: 50,
                width: 370,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RoundCheckBox(
                        onTap: (selected) {},
                        isChecked: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Learn CSS",
                        style: TextStyle(
                          fontSize: 24,
                          color: kPrimaryBlue,
                          fontFamily: 'Cairo',
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove_red_eye_outlined),
                        color: kButtonBlue,
                        iconSize: 30,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        onPressed: () {},
                        icon:
                            Image.asset('assets/images/NoPath - Copy (40).png'),
                        iconSize: 10,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: IconButton(
                        onPressed: () {},
                        icon:
                            Image.asset('assets/images/NoPath - Copy (39).png'),
                        iconSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              //TODO Location
              child: Container(
                height: 50,
                width: 370,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: RoundCheckBox(
                        onTap: (selected) {},
                        isChecked: true,
                      ),
                    ),
                    Text(
                      "Learn JavaScript",
                      style: TextStyle(
                        fontSize: 24,
                        color: kPrimaryBlue,
                        fontFamily: 'Cairo',
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove_red_eye_outlined),
                      color: kButtonBlue,
                      iconSize: 30,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/images/NoPath - Copy (40).png'),
                      iconSize: 10,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/images/NoPath - Copy (39).png'),
                      iconSize: 25,
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              //TODO Location
              child: Container(
                height: 50,
                width: 370,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RoundCheckBox(
                        onTap: (selected) {},
                        isChecked: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Learn Java",
                        style: TextStyle(
                          fontSize: 24,
                          color: kPrimaryBlue,
                          fontFamily: 'Cairo',
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove_red_eye_outlined),
                        color: kButtonBlue,
                        iconSize: 30,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        onPressed: () {},
                        icon:
                            Image.asset('assets/images/NoPath - Copy (40).png'),
                        iconSize: 10,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: IconButton(
                        onPressed: () {},
                        icon:
                            Image.asset('assets/images/NoPath - Copy (39).png'),
                        iconSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  backgroundColor: kPrimaryBlue,
                  onPressed: () {},
                  child: Image.asset(
                    "assets/images/NoPath - Copy (61).png",
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
