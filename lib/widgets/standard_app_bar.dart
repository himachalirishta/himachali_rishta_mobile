import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:sizer/sizer.dart';

class StandardAppBar extends StatelessWidget {
  final String title;

  const StandardAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back)),
        SizedBox(
          width: 4.sp.adjustedSp,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 14.sp.adjustedSp),
        ),
        Spacer(),
        Image.asset(
          'assets/images/homepagelogo.jpg',
          width: 100.sp.adjustedSp,
        ),
        SizedBox(
          width: 8.sp.adjustedSp,
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
      ],
    );
  }
}
