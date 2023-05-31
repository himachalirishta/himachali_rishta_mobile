///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/features/dashboard/ui/MainDashboardPage.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:sizer/sizer.dart';

import '../get_controller/upload_photo_get_controller.dart';

class UploadPhotoScreen extends StatelessWidget {
  UploadPhotoGetController getController = Get.put(UploadPhotoGetController());

  UploadPhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: Container(
          color: Theme.of(context).primaryColor,
        ),
      ),
      backgroundColor: Color(0xffffffff),
      body: StreamBuilder<bool>(
          stream: Stream.periodic(Duration(seconds: 1), (_) {
            return SizerUtil.orientation == Orientation.landscape;
          }),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ConstrainedBox(
                    constraints:
                        BoxConstraints(maxWidth: snapshot.data! ? 700 : 100.w),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 8.sp.adjustedSp, horizontal: 16.sp.adjustedSp),
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
                              fontSize: 20.sp.adjustedSp,
                              color: Color(0xff000000),
                            ),
                          ),
                          SizedBox(
                            height: 16.sp.adjustedSp,
                            width: 16.sp.adjustedSp,
                          ),
                          Text(
                            "Upload a clear visible photo. You can choose to hide your photo from other members in privacy section.",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              fontSize: 12.sp.adjustedSp,
                              color: Color(0xff000000),
                            ),
                          ),
                          SizedBox(
                            height: 16.sp.adjustedSp,
                            width: 16.sp.adjustedSp,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Obx(() {
                                return getController.selectedPhoto.isEmpty
                                    ? CircleAvatar(
                                        radius: 50.sp.adjustedSp,
                                        backgroundImage: AssetImage(
                                            'assets/images/maledefault.jpg'),
                                      )
                                    : CircleAvatar(
                                        radius: 50.sp.adjustedSp,
                                        backgroundImage: FileImage(File(
                                            getController.selectedPhoto.value)),
                                      );
                              }),
                            ],
                          ),
                          SizedBox(
                            height: 16.sp.adjustedSp,
                            width: 16.sp.adjustedSp,
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
                                color: Color(0xffffffff),
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(8.0.sp.adjustedSp),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.sp.adjustedSp,
                                    vertical: 8.sp.adjustedSp),
                                textColor: Color(0xff000000),
                                height: 30.sp.adjustedSp,
                                minWidth: 130.sp.adjustedSp,
                                child: Text(
                                  "Upload Photo",
                                  style: TextStyle(
                                    fontSize: 14.sp.adjustedSp,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 32.sp.adjustedSp,
                            width: 16.sp.adjustedSp,
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.sp.adjustedSp),
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
                                      borderRadius:
                                          BorderRadius.circular(8.0.sp.adjustedSp),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.sp.adjustedSp,
                                        vertical: 8.sp.adjustedSp),
                                    textColor: Color(0xff000000),
                                    height: 30.sp.adjustedSp,
                                    minWidth: 130.sp.adjustedSp,
                                    child: Text(
                                      "Next",
                                      style: TextStyle(
                                          fontSize: 18.sp.adjustedSp,
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
                  ),
                ],
              );
            }
            return Container();
          }),
    );
  }
}
