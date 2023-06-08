import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/features/dashboard/models/latest_profile_model.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:sizer/sizer.dart';

import '../../../core/app_colors.dart';
import '../../../profile/ui/profile_page.dart';
import '../get_controllers/all_tab_get_controller.dart';

class AllTab extends StatelessWidget {
  final String accessToken;

  AllTab({Key? key, required this.accessToken}) : super(key: key);
  AllTabGetController getController = Get.put(AllTabGetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<LatestProfileModel>(
            future: getController.getLatestProfiles(accessToken),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                LatestProfileModel latestProfileModel = snapshot.data!;
                List<Datum> latestProfiles = latestProfileModel.data;

                return ListView(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.zero,
                  shrinkWrap: false,
                  physics: const ScrollPhysics(),
                  children: [
                    ...latestProfiles.map((e) => Card(
                          margin: EdgeInsets.all(4.0.sp.adjustedSp),
                          color: const Color(0xffffffff),
                          shadowColor: const Color(0xff000000),
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(16.0.sp.adjustedSp),
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
                                      e.name,
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 18.sp.adjustedSp,
                                        color: const Color(0xffe21c3d),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16.sp.adjustedSp,
                                      width: 16.sp.adjustedSp,
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              "${e.gender}",
                                              textAlign: TextAlign.start,
                                              overflow: TextOverflow.clip,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal,
                                                fontSize: 10.sp.adjustedSp,
                                                color: const Color(0xff000000),
                                              ),
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
                                              color: const Color(0xff018601),
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color:
                                                      const Color(0x4d9e9e9e),
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
                                  borderRadius:
                                      BorderRadius.circular(13.sp.adjustedSp),
                                  child:

                                      ///***If you have exported images you must have to copy those images in assets/images directory.
                                      Image(
                                    image: NetworkImage(e.image ??
                                        'https://beingpahadi.com/wp-content/uploads/2017/03/manisha-choudhary-amma-ji.jpg'),
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
                                      "${e.age} yrs, ${e.martialStatus}",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 10.sp.adjustedSp,
                                        color: const Color(0xff000000),
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
                                      e.occupation,
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 11.sp.adjustedSp,
                                        color: const Color(0xff000000),
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
                                      e.education,
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14.sp.adjustedSp,
                                        color: const Color(0xff000000),
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
                                      e.matriId ?? "",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 10.sp.adjustedSp,
                                        color: const Color(0xff000000),
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
                                      "From: ${e.hometown}",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 10.sp.adjustedSp,
                                        color: const Color(0xff000000),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "Lives in: ${e.livingCityName ?? ""}",
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.clip,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 10.sp.adjustedSp,
                                          color: const Color(0xff000000),
                                        ),
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
                                          borderRadius: BorderRadius.circular(
                                              8.0.sp.adjustedSp),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16.sp.adjustedSp,
                                            vertical: 8.sp.adjustedSp),
                                        textColor: Colors.white,
                                        height: 40,
                                        minWidth: 140,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                                          Get.to(() => const ProfilePage());
                                        },
                                        color: const Color(0xff01052e),
                                        elevation: 3,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              8.0.sp.adjustedSp),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16.sp.adjustedSp,
                                            vertical: 8.sp.adjustedSp),
                                        textColor: Colors.white,
                                        height: 40,
                                        minWidth: 140,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                        ))
                  ],
                );
              }
              return Center(child: CircularProgressIndicator());
            }));
  }
}
