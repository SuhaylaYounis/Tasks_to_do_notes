
import 'package:flutter/material.dart';

import 'colors.dart';

class Item extends StatelessWidget {

  final VoidCallback? viewClick;
  final VoidCallback? editClick;
  final VoidCallback? deleteClick;
  final Function? onChange;
  final String? title;
  final bool? active;
  Item({
   required this.deleteClick,
   required this.editClick,
   required this.viewClick,
   required this.onChange,
   required this.title,
   required this.active,
});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
      //TODO Location
      child: SizedBox(
        height: 50,
        width: 370,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Checkbox(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              value: active,
              activeColor: Colors.green,
              onChanged: (bool? active){
                return onChange!(active);
            },
            ),
            Text(
              title!,
              style: TextStyle(
                fontSize: 24,
                color: kPrimaryBlue,
                fontFamily: 'Cairo',
              ),
            ),
            IconButton(
              onPressed: viewClick,
              icon: Icon(Icons.remove_red_eye_outlined),
              color: kButtonBlue,
              iconSize: 30,
            ),
            IconButton(
              onPressed: editClick,
              icon:
              Image.asset('assets/images/NoPath - Copy (40).png'),
              iconSize: 10,
            ),
            IconButton(
              onPressed: deleteClick,
              icon:
              Image.asset('assets/images/NoPath - Copy (39).png'),
              iconSize: 25,
            ),
          ],
        ),
      ),
    );
  }
}
