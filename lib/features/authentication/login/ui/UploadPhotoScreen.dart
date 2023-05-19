///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/features/dashboard/ui/MainDashboardPage.dart';
import 'package:sizer/sizer.dart';

import '../get_controller/upload_photo_get_controller.dart';

class UploadPhotoScreen extends StatelessWidget {
  UploadPhotoGetController getController = Get.put(UploadPhotoGetController());

  UploadPhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(
          color: Theme.of(context).primaryColor,
        ),
      ),
      backgroundColor: const Color(0xffffffff),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              "Upload Photo",
              textAlign: TextAlign.start,
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                fontSize: 20.sp,
                color: const Color(0xff000000),
              ),
            ),
            SizedBox(
              height: 16.sp,
              width: 16.sp,
            ),
            Text(
              "Upload a clear visible photo. You can choose to hide your photo from other members in privacy section.",
              textAlign: TextAlign.start,
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                fontSize: 12.sp,
                color: const Color(0xff000000),
              ),
            ),
            SizedBox(
              height: 16.sp,
              width: 16.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Obx(() {
                  return getController.selectedPhoto.isEmpty
                      ? CircleAvatar(
                          radius: 50.sp,
                          backgroundImage:
                              const AssetImage('assets/images/maledefault.jpg'),
                        )
                      : CircleAvatar(
                          radius: 50.sp,
                          backgroundImage: FileImage(
                              File(getController.selectedPhoto.value)),
                        );
                }),
              ],
            ),
            SizedBox(
              height: 16.sp,
              width: 16.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                MaterialButton(
                  onPressed: () {
                    getController.startPickingImage();
                  },
                  color: const Color(0xffffffff),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  textColor: const Color(0xff000000),
                  height: 30.sp,
                  minWidth: 130.sp,
                  child: const Text(
                    "Upload Photo",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 32.sp,
              width: 16.sp,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 1,
                    child: MaterialButton(
                      onPressed: () {
                        Get.offAll(() => MainDashboardPage());
                      },
                      color: Theme.of(context).primaryColor,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      textColor: const Color(0xff000000),
                      height: 30.sp,
                      minWidth: 130.sp,
                      child: const Text(
                        "Next",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
