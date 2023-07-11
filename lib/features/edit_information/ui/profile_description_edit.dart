import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:sizer/sizer.dart';

import '../get_controllers/profile_description_get_controller.dart';

class ProfileDescriptionEdit extends StatelessWidget {
  ProfileDescriptionEdit({super.key});

  ProfileDescriptionGetController getController =
      Get.put(ProfileDescriptionGetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(
          color: Theme.of(context).primaryColor,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.sp.adjustedSp,
          vertical: 8.0.sp.adjustedSp,
        ),
        child: ListView(
          children: [
            TextField(
              controller: getController.descriptionController,
              obscureText: false,
              textAlign: TextAlign.start,
              maxLines: 5,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 12.sp.adjustedSp,
                color: const Color(0xff000000),
              ),
              decoration: InputDecoration(
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                  borderSide: BorderSide(
                      color: const Color(0xffe0e0e0), width: 1.sp.adjustedSp),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                  borderSide: BorderSide(
                      color: const Color(0xffe0e0e0), width: 1.sp.adjustedSp),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                  borderSide: BorderSide(
                      color: const Color(0xffe0e0e0), width: 1.sp.adjustedSp),
                ),
                labelText: "Description",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 12.sp.adjustedSp,
                  color: const Color(0xff000000),
                ),
                filled: false,
                fillColor: const Color(0xfff2f2f3),
                isDense: false,
                contentPadding: EdgeInsets.fromLTRB(
                    12.sp.adjustedSp, 8.sp.adjustedSp, 12.sp.adjustedSp, 8),
              ),
            ),
            SizedBox(
              height: 16.sp.adjustedSp,
              width: 16.sp.adjustedSp,
            ),
            MaterialButton(
              onPressed: () {
                getController.submitDescription();
              },
              color: const Color(0xffac0f11),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              textColor: const Color(0xff000000),
              height: 38.sp.adjustedSp,
              minWidth: 138.sp.adjustedSp,
              child: Text(
                "Submit",
                style: TextStyle(
                  fontSize: 12.sp.adjustedSp,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
