import 'package:flutter/material.dart';
import 'package:himachali_rishta/widgets/profile_card.dart';
import 'package:sizer/sizer.dart';

import '../../../core/app_colors.dart';

class MembershipPagePaid extends StatelessWidget {
  const MembershipPagePaid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(
          color: Theme.of(context).primaryColor,
        ),
      ),
      backgroundColor: AppColors.primaryBackground,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.zero,
            padding: EdgeInsets.all(4.sp),
            width: 100.w,
            height: 10.h,
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.zero,
            ),
            child: Text(
              "My Membership",
              textAlign: TextAlign.start,
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                fontSize: 16.sp,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ProfileCard(),
                    /*Container(
                      margin: EdgeInsets.zero,
                      padding: EdgeInsets.zero,
                      width: 100.w,
                      decoration: const BoxDecoration(
                        color: Color(0xffffffff),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.zero,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CircleAvatar(
                                  radius: 30.sp,
                                  backgroundImage: const NetworkImage(
                                      "https://picsum.photos/250?image=9"),
                                ),
                                SizedBox(
                                  height: 16.sp,
                                  width: 16.sp,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        "Neha Sharma",
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.clip,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8.sp,
                                        width: 16.sp,
                                      ),
                                      Text(
                                        "Matri ID: HPR345677",
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.clip,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 10.sp,
                                          color: const Color(0xffac0f11),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 8.sp,
                                        width: 16.sp,
                                      ),
                                      Text(
                                        "Relationship Manager:",
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.clip,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16.sp,
                              width: 16.sp,
                            ),
                            Text(
                              "My Profile's Relationship Manager:",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                                fontSize: 12.sp,
                                color: const Color(0xffac0f11),
                              ),
                            ),
                            SizedBox(
                              height: 8.sp,
                              width: 16.sp,
                            ),
                            Text(
                              "Miss Priya Chaudhary (Mob. 9876543210)",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 10.sp,
                              ),
                            ),
                            SizedBox(
                              height: 8.sp,
                              width: 16.sp,
                            ),
                          ],
                        ),
                      ),
                    ),*/
                    SizedBox(
                      height: 16.sp,
                      width: 16.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "My Membership",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                    Card(
                      margin: const EdgeInsets.all(4.0),
                      color: const Color(0xffffffff),
                      shadowColor: const Color(0xff000000),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0.sp),
                        side: const BorderSide(
                            color: Color(0x4d9e9e9e), width: 1),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(4.sp),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Table(
                              children: [
                                TableRow(children: [
                                  Text(
                                    'Current Plan:',
                                    style: TextStyle(fontSize: 10.sp),
                                  ),
                                  Text(
                                    'Silver Plan',
                                    style: TextStyle(fontSize: 10.sp),
                                  ),
                                ]),
                                TableRow(children: [
                                  Text(
                                    'Plan Activated On:',
                                    style: TextStyle(fontSize: 10.sp),
                                  ),
                                  Text(
                                    '24-02-2023',
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        color: AppColors.alternate,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ]),
                                TableRow(children: [
                                  Text(
                                    'Plan Status:',
                                    style: TextStyle(fontSize: 10.sp),
                                  ),
                                  Text(
                                    'Valid, active till 31-05-2023',
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        color: AppColors.alternate,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ]),
                                TableRow(children: [
                                  Text(
                                    'Contact Remaining:',
                                    style: TextStyle(fontSize: 10.sp),
                                  ),
                                  Text(
                                    '21',
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        color: AppColors.alternate,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ]),
                                TableRow(children: [
                                  Text(
                                    'Contact Viewed:',
                                    style: TextStyle(fontSize: 10.sp),
                                  ),
                                  Text(
                                    '29',
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ]),
                              ],
                            ),
                            SizedBox(
                              height: 8.sp,
                            ),
                            MaterialButton(
                              onPressed: () {},
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0.sp),
                                side: BorderSide(
                                    color: const Color(0xff000000),
                                    width: 1.sp),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              textColor: const Color(0xff000000),
                              height: 38.sp,
                              minWidth: 138.sp,
                              child: Text(
                                "My Viewed Contacts",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8.sp,
                            ),
                            MaterialButton(
                              onPressed: () {},
                              elevation: 4,
                              color: Theme.of(context).primaryColorDark,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0.sp),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              textColor: const Color(0xff000000),
                              height: 38.sp,
                              minWidth: 138.sp,
                              child: Text(
                                "Request Invoice",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.sp,
                      width: 16.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "Need Personal Matchmaking Service",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                    Card(
                      margin: const EdgeInsets.all(4.0),
                      color: const Color(0xffffffff),
                      shadowColor: const Color(0xff000000),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0.sp),
                        side: const BorderSide(
                            color: Color(0x4d9e9e9e), width: 1),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(4.sp),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "We understand how difficult is to find matrimonial mocthes in bull lifeDont worry our experts con work on your profile and can speak on behalf of you to help you to find your match .Top below to send enquery oboty this process.Our executive will call you and will explain the process. ",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 10.sp,
                              ),
                            ),
                            SizedBox(
                              height: 8.sp,
                              width: 16.sp,
                            ),
                            MaterialButton(
                              onPressed: () {},
                              color: Theme.of(context).primaryColor,
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0.sp),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              textColor: const Color(0xff000000),
                              height: 38.sp,
                              minWidth: 138.sp,
                              child: Text(
                                "Request Call Back",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
