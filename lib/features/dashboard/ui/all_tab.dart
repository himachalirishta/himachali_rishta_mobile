import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:sizer/sizer.dart';

import '../../../core/app_colors.dart';
import '../../../profile/ui/profile_page.dart';
import '../get_controllers/all_tab_get_controller.dart';

class AllTab extends StatelessWidget {
  AllTab({Key? key}) : super(key: key);
  AllTabGetController getController = Get.put(AllTabGetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.zero,
      shrinkWrap: false,
      physics: ScrollPhysics(),
      children: [
        ...List.generate(
          10,
          (index) => Card(
            margin: EdgeInsets.all(4.0.sp.adjustedSp),
            color: Color(0xffffffff),
            shadowColor: Color(0xff000000),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0.sp.adjustedSp),
            ),
            child: Padding(
              padding: EdgeInsets.all(8.sp.adjustedSp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "HPR518619",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          fontSize: 18.sp.adjustedSp,
                          color: Color(0xffe21c3d),
                        ),
                      ),
                      SizedBox(
                        height: 16.sp.adjustedSp,
                        width: 16.sp.adjustedSp,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "Last Active: Today 5:40 pm",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 10.sp.adjustedSp,
                                color: Color(0xff000000),
                              ),
                            ),
                            SizedBox(
                              height: 16.sp.adjustedSp,
                              width: 8.sp.adjustedSp,
                            ),
                            Container(
                              margin: EdgeInsets.zero,
                              padding: EdgeInsets.zero,
                              width: 10.sp.adjustedSp,
                              height: 10.sp.adjustedSp,
                              decoration: BoxDecoration(
                                color: Color(0xff018601),
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color(0x4d9e9e9e),
                                    width: 1.sp.adjustedSp),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.sp.adjustedSp,
                    width: 16.sp.adjustedSp,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(13.sp.adjustedSp),
                    child:

                        ///***If you have exported images you must have to copy those images in assets/images directory.
                        Image(
                      image: NetworkImage(
                          "https://beingpahadi.com/wp-content/uploads/2017/03/manisha-choudhary-amma-ji.jpg"),
                      width: 75.w.adjustedW,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 16.sp.adjustedSp,
                    width: 16.sp.adjustedSp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "36 yrs, Unmarried",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 10.sp.adjustedSp,
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Hindu, Nai/Barber, (OBC)",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 11.sp.adjustedSp,
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "12th/10+2, Technician",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          fontSize: 14.sp.adjustedSp,
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Private Employee",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 10.sp.adjustedSp,
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "From: Kangra",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 10.sp.adjustedSp,
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Lives in: Kangra/Chaumunda",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 10.sp.adjustedSp,
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.sp.adjustedSp,
                    width: 16.sp.adjustedSp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex: 1,
                        child: MaterialButton(
                          onPressed: () {},
                          color: AppColors.alternate,
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(8.0.sp.adjustedSp),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.sp.adjustedSp,
                              vertical: 8.sp.adjustedSp),
                          textColor: Colors.white,
                          height: 40,
                          minWidth: 140,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.call,
                                color: Colors.white,
                                size: 16.sp.adjustedSp,
                              ),
                              SizedBox(
                                width: 8.sp.adjustedSp,
                              ),
                              Text(
                                "Contact",
                                style: TextStyle(
                                  fontSize: 12.sp.adjustedSp,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16.sp.adjustedSp,
                        width: 16.sp.adjustedSp,
                      ),
                      Expanded(
                        flex: 1,
                        child: MaterialButton(
                          onPressed: () {
                            Get.to(() => ProfilePage());
                          },
                          color: Color(0xff01052e),
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(8.0.sp.adjustedSp),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.sp.adjustedSp,
                              vertical: 8.sp.adjustedSp),
                          textColor: Colors.white,
                          height: 40,
                          minWidth: 140,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.more_vert,
                                color: Colors.white,
                                size: 16.sp.adjustedSp,
                              ),
                              Text(
                                "More",
                                style: TextStyle(
                                  fontSize: 12.sp.adjustedSp,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
