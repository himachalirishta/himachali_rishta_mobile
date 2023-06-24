///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/core/app_colors.dart';
import 'package:himachali_rishta/features/edit_information/ui/BasicEditPage.dart';
import 'package:himachali_rishta/features/edit_information/ui/assets_and_properties_edit.dart';
import 'package:himachali_rishta/features/edit_information/ui/best_time_to_call_edit.dart';
import 'package:himachali_rishta/features/edit_information/ui/contact_details_edit.dart';
import 'package:himachali_rishta/features/edit_information/ui/family_details_edit.dart';
import 'package:himachali_rishta/features/edit_information/ui/horoscope_social_edit.dart';
import 'package:himachali_rishta/features/edit_information/ui/partner_preference_edit.dart';
import 'package:himachali_rishta/features/edit_information/ui/physical_attributes_and_eating_habits_page.dart';
import 'package:himachali_rishta/features/edit_information/ui/profile_description_edit.dart';
import 'package:himachali_rishta/helpers/date_time_helper.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:himachali_rishta/profile/models/my_profile_details_model.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../features/edit_information/ui/education_occupation_edit.dart';
import '../get_controllers/my_profile_get_controllers.dart';
import 'PartnerPreferenceTab.dart';

class MyProfilePage extends StatelessWidget {
  MyProfilePage({super.key});

  MyProfileGetController getController = Get.put(MyProfileGetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: Container(
          color: Theme.of(context).primaryColor,
        ),
      ),
      backgroundColor: AppColors.primaryBackground,
      body: StreamBuilder<bool>(
          stream: Stream.periodic(Duration(milliseconds: 500), (_) {
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
                    child: SingleChildScrollView(
                      child: SizedBox(
                        height: 150.h,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.zero,
                              padding: EdgeInsets.all(8.sp.adjustedSp),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.zero,
                                border: Border.all(
                                    color: Color(0x4d9e9e9e),
                                    width: 1.sp.adjustedSp),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8.0.sp.adjustedSp),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        CircleAvatar(
                                          radius: 35.sp.adjustedSp,
                                          backgroundImage: NetworkImage(
                                              "https://picsum.photos/250?image=9"),
                                        ),
                                        SizedBox(
                                          height: 8.sp.adjustedSp,
                                          width: 16.sp.adjustedSp,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              "Neha Sharma",
                                              textAlign: TextAlign.start,
                                              overflow: TextOverflow.clip,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal,
                                                fontSize: 16.sp.adjustedSp,
                                                color: Theme.of(context)
                                                    .secondaryHeaderColor,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Text(
                                              "Matri ID:HPR345677",
                                              textAlign: TextAlign.start,
                                              overflow: TextOverflow.clip,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontStyle: FontStyle.normal,
                                                fontSize: 10.sp.adjustedSp,
                                                color: Color(0xffac0f11),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Text(
                                              "Relationship Manager: ",
                                              textAlign: TextAlign.start,
                                              overflow: TextOverflow.clip,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontStyle: FontStyle.normal,
                                                fontSize: 10.sp.adjustedSp,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.sp.adjustedSp,
                                    width: 16.sp.adjustedSp,
                                  ),
                                  Text(
                                    "My Profile's Relationship Manager",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.sp.adjustedSp,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.sp.adjustedSp,
                                    width: 16.sp.adjustedSp,
                                  ),
                                  Text(
                                    "Miss Priya Choudhory ( Mb : 9809898778 ) ",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.sp.adjustedSp,
                                      color: Theme.of(context)
                                          .secondaryHeaderColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8.sp.adjustedSp,
                              width: 16.sp.adjustedSp,
                            ),
                            Card(
                              margin: EdgeInsets.all(4.0),
                              color: Color(0xffffffff),
                              shadowColor: Color(0xff000000),
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10.0.sp.adjustedSp),
                                side: BorderSide(
                                    color: Color(0x4d9e9e9e),
                                    width: 1.sp.adjustedSp),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8.sp.adjustedSp),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 16.sp.adjustedSp,
                                        ),
                                        Text(
                                          "Your Profile is 62% Complete",
                                          textAlign: TextAlign.start,
                                          overflow: TextOverflow.clip,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 13.sp.adjustedSp,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 0.sp.adjustedSp,
                                      width: 16.sp.adjustedSp,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            "We recommend to complete your profile to get maximum visiblity in search result.The profiles with maximum information get more attentions ",
                                            textAlign: TextAlign.start,
                                            overflow: TextOverflow.clip,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontStyle: FontStyle.normal,
                                              fontSize: 10.sp.adjustedSp,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                          width: 20.h,
                                          child: SfCircularChart(
                                            series: <CircularSeries>[
                                              DoughnutSeries<MatchData, String>(
                                                dataSource: [
                                                  MatchData(
                                                    'Not Match',
                                                    62,
                                                    Theme.of(context)
                                                        .primaryColor,
                                                  ),
                                                  MatchData(
                                                      'Match',
                                                      38,
                                                      //#eeeeee
                                                      Color(0xffeeeeee)),
                                                ],
                                                xValueMapper:
                                                    (MatchData data, _) =>
                                                        data.name,
                                                yValueMapper:
                                                    (MatchData data, _) =>
                                                        data.value,
                                                pointColorMapper:
                                                    (MatchData data, _) =>
                                                        data.color,
                                                dataLabelMapper:
                                                    (MatchData data, _) =>
                                                        "${data.value}%",
                                                radius: '80%',
                                                legendIconType:
                                                    LegendIconType.circle,
                                                dataLabelSettings:
                                                    DataLabelSettings(
                                                        isVisible: true,
                                                        color: Colors.black,
                                                        textStyle: TextStyle(
                                                            fontSize: 12
                                                                .sp
                                                                .adjustedSp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500)),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12.sp.adjustedSp,
                              width: 16.sp.adjustedSp,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.0.sp.adjustedSp),
                              child: SizedBox(
                                height: 80.sp.adjustedSp,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 4.0.sp.adjustedSp),
                                      child: Container(
                                        width: 50.w,
                                        margin: EdgeInsets.zero,
                                        padding:
                                            EdgeInsets.all(4.sp.adjustedSp),
                                        decoration: BoxDecoration(
                                          color: Color(0xffffffff),
                                          shape: BoxShape.rectangle,
                                          borderRadius: BorderRadius.circular(
                                              8.0.sp.adjustedSp),
                                          border: Border.all(
                                              color: Theme.of(context)
                                                  .secondaryHeaderColor,
                                              width: 0.5.sp.adjustedSp),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "Upload your photos",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 2.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                /*Expanded(
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                    Image(
                                                      image: NetworkImage(
                                                          "https://picsum.photos/250?image=9"),
                                                      width:
                                                          MediaQuery.of(context).size.width * 0.2,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ],
                                                ),
                                              ),*/
                                                ElevatedButton(
                                                  onPressed: () {},
                                                  child: Text("Upload Photo"),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Theme.of(context)
                                                            .primaryColor,
                                                    // Sets the background color to red
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius: BorderRadius
                                                          .circular(8
                                                              .sp
                                                              .adjustedSp), // Sets the border radius
                                                    ),
                                                  ),
                                                ),
                                                /*SizedBox(
                                                height: 2.sp.adjustedSp,
                                                width: 2.sp.adjustedSp,
                                              ),*/
                                                SizedBox(
                                                  width: 8.sp.adjustedSp,
                                                ),
                                                IconButton(
                                                  icon: Icon(Icons.add_a_photo),
                                                  onPressed: () {},
                                                  color: Theme.of(context)
                                                      .secondaryHeaderColor,
                                                  iconSize: 24,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 2.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "Increase profile score by 30%",
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 4.0.sp.adjustedSp),
                                      child: Container(
                                        width: 50.w,
                                        margin: EdgeInsets.zero,
                                        padding:
                                            EdgeInsets.all(4.sp.adjustedSp),
                                        decoration: BoxDecoration(
                                          color: Color(0xffffffff),
                                          shape: BoxShape.rectangle,
                                          borderRadius: BorderRadius.circular(
                                              8.0.sp.adjustedSp),
                                          border: Border.all(
                                              color: Theme.of(context)
                                                  .secondaryHeaderColor,
                                              width: 0.5.sp.adjustedSp),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "Upload ID Proof",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 2.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                /*Expanded(
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                    Image(
                                                      image: NetworkImage(
                                                          "https://picsum.photos/250?image=9"),
                                                      width:
                                                          MediaQuery.of(context).size.width * 0.2,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ],
                                                ),
                                              ),*/
                                                ElevatedButton(
                                                  onPressed: () {},
                                                  child: Text("Upload Photo"),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Theme.of(context)
                                                            .primaryColor,
                                                    // Sets the background color to red
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius: BorderRadius
                                                          .circular(8
                                                              .sp
                                                              .adjustedSp), // Sets the border radius
                                                    ),
                                                  ),
                                                ),
                                                /*SizedBox(
                                                height: 2.sp.adjustedSp,
                                                width: 2.sp.adjustedSp,
                                              ),*/
                                                SizedBox(
                                                  width: 8.sp.adjustedSp,
                                                ),
                                                IconButton(
                                                  icon: Icon(Icons.add_a_photo),
                                                  onPressed: () {},
                                                  color: Theme.of(context)
                                                      .secondaryHeaderColor,
                                                  iconSize: 24,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 2.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "Increase profile score by 30%",
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12.sp.adjustedSp,
                              width: 16.sp.adjustedSp,
                            ),
                            FutureBuilder<MyProfileDetailsModel>(
                                future: getController.getProfileDetails(),
                                builder: (context, snapshot) {
                                  if (snapshot.hasData) {
                                    MyProfileDetailsModel data = snapshot.data!;
                                    return Expanded(
                                      child: Container(
                                        margin: EdgeInsets.zero,
                                        padding: EdgeInsets.zero,
                                        width: 100.w,
                                        height: 50.h,
                                        color: Colors.white,
                                        child: ListView(
                                          scrollDirection: Axis.vertical,
                                          padding:
                                              EdgeInsets.all(8.sp.adjustedSp),
                                          shrinkWrap: false,
                                          //physics: ScrollPhysics(),
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons.person,
                                                        color:
                                                            Color(0xff212435),
                                                        size: 24,
                                                      ),
                                                      SizedBox(
                                                        height: 8.sp.adjustedSp,
                                                        width: 4,
                                                      ),
                                                      Text(
                                                        "Basic Information",
                                                        textAlign:
                                                            TextAlign.start,
                                                        overflow:
                                                            TextOverflow.clip,
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          fontSize:
                                                              12.sp.adjustedSp,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    Get.to(
                                                        () => BasicEditPage());
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons.edit,
                                                        color:
                                                            Color(0xff212435),
                                                        size: 18,
                                                      ),
                                                      SizedBox(
                                                        height: 8.sp.adjustedSp,
                                                        width: 4,
                                                      ),
                                                      Text(
                                                        "Edit",
                                                        textAlign:
                                                            TextAlign.start,
                                                        overflow:
                                                            TextOverflow.clip,
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          fontSize:
                                                              12.sp.adjustedSp,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Name:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.basic.name)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Marital Status:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.basic.martialStatus)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Religion:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.basic.religion)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Caste:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.basic.caste)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Height:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.basic.height)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "DOB:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data
                                                    .basic.dob.toDisplayFormat)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Number of Children:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.basic.numberOfChilds)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Children Living With:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data
                                                    .basic.childrenLivingWith)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 16.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons.school,
                                                        color:
                                                            Color(0xff212435),
                                                        size: 24,
                                                      ),
                                                      SizedBox(
                                                        height: 8.sp.adjustedSp,
                                                        width: 4,
                                                      ),
                                                      Text(
                                                        "Education and Occupation",
                                                        textAlign:
                                                            TextAlign.start,
                                                        overflow:
                                                            TextOverflow.clip,
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          fontSize:
                                                              12.sp.adjustedSp,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    Get.to(() =>
                                                        EducationOccupationEditPage());
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons.edit,
                                                        color:
                                                            Color(0xff212435),
                                                        size: 18,
                                                      ),
                                                      SizedBox(
                                                        height: 8.sp.adjustedSp,
                                                        width: 4,
                                                      ),
                                                      Text(
                                                        "Edit",
                                                        textAlign:
                                                            TextAlign.start,
                                                        overflow:
                                                            TextOverflow.clip,
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          fontSize:
                                                              12.sp.adjustedSp,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Education:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.educationOccupation
                                                    .education)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Education Details:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.educationOccupation
                                                    .educationDetails)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Employment Type:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.educationOccupation
                                                    .educationDetailsStatus)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Occupation:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.educationOccupation
                                                    .occupation)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Occupation Details:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.educationOccupation
                                                    .occupationDetails)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Annual Income:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.educationOccupation
                                                    .annualIncome)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 16.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons.accessibility,
                                                        color:
                                                            Color(0xff212435),
                                                        size: 24,
                                                      ),
                                                      SizedBox(
                                                        height: 8.sp.adjustedSp,
                                                        width: 4,
                                                      ),
                                                      Text(
                                                        "Physical Attributes and Eating Habits",
                                                        textAlign:
                                                            TextAlign.start,
                                                        overflow:
                                                            TextOverflow.clip,
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          fontSize:
                                                              12.sp.adjustedSp,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    Get.to(() =>
                                                        PhysicalAttributesAndEatingHabitsPage());
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons.edit,
                                                        color:
                                                            Color(0xff212435),
                                                        size: 18,
                                                      ),
                                                      SizedBox(
                                                        height: 8.sp.adjustedSp,
                                                        width: 4,
                                                      ),
                                                      Text(
                                                        "Edit",
                                                        textAlign:
                                                            TextAlign.start,
                                                        overflow:
                                                            TextOverflow.clip,
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          fontSize:
                                                              12.sp.adjustedSp,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Height:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data
                                                    .physicalAttributes.height)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Weight:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data
                                                    .physicalAttributes.weight)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Blood Group:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.physicalAttributes
                                                    .bloodGroup)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Complexion:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.physicalAttributes
                                                    .complexion)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Body Type:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.physicalAttributes
                                                    .bodyType)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Diet:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data
                                                    .physicalAttributes.diet)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Special Case:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.physicalAttributes
                                                    .specialCase)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Disability:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.physicalAttributes
                                                    .disablity)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 16.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        MdiIcons
                                                            .accountMultiple,
                                                        color:
                                                            Color(0xff212435),
                                                        size: 24,
                                                      ),
                                                      SizedBox(
                                                        height: 8.sp.adjustedSp,
                                                        width: 4,
                                                      ),
                                                      Text(
                                                        "Family Details",
                                                        textAlign:
                                                            TextAlign.start,
                                                        overflow:
                                                            TextOverflow.clip,
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          fontSize:
                                                              12.sp.adjustedSp,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    Get.to(() =>
                                                        FamilyDetailsEdit());
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons.edit,
                                                        color:
                                                            Color(0xff212435),
                                                        size: 18,
                                                      ),
                                                      SizedBox(
                                                        height: 8.sp.adjustedSp,
                                                        width: 4,
                                                      ),
                                                      Text(
                                                        "Edit",
                                                        textAlign:
                                                            TextAlign.start,
                                                        overflow:
                                                            TextOverflow.clip,
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          fontSize:
                                                              12.sp.adjustedSp,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Father's Occupation:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.familyDetails
                                                    .fatherOccupation)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Mother's Occupation:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.familyDetails
                                                    .motherOccupation)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Family Type:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data
                                                    .familyDetails.familyType)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Number of Elder Brothers:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.familyDetails
                                                    .elderBrothers)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Number of Younger Brothers:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.familyDetails
                                                    .youngerBrothers)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Number of Married Brothers:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.familyDetails
                                                    .marriedBrothers)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Number of Elder Sisters:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data
                                                    .familyDetails.elderSister)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Number of Younger Sisters:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.familyDetails
                                                    .youngerSister)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Number of Married Sisters",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.familyDetails
                                                    .marriedSister)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 16.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        MdiIcons
                                                            .googleCirclesCommunities,
                                                        color:
                                                            Color(0xff212435),
                                                        size: 24,
                                                      ),
                                                      SizedBox(
                                                        height: 8.sp.adjustedSp,
                                                        width: 4,
                                                      ),
                                                      Text(
                                                        "Horoscope and Social",
                                                        textAlign:
                                                            TextAlign.start,
                                                        overflow:
                                                            TextOverflow.clip,
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          fontSize:
                                                              12.sp.adjustedSp,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    Get.to(() =>
                                                        HoroscopeSocialEditPage());
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons.edit,
                                                        color:
                                                            Color(0xff212435),
                                                        size: 18,
                                                      ),
                                                      SizedBox(
                                                        height: 8.sp.adjustedSp,
                                                        width: 4,
                                                      ),
                                                      Text(
                                                        "Edit",
                                                        textAlign:
                                                            TextAlign.start,
                                                        overflow:
                                                            TextOverflow.clip,
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          fontSize:
                                                              12.sp.adjustedSp,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Manglik:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data
                                                    .horoscopeSocial.manglik)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Birth Place:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data
                                                    .horoscopeSocial.birthPlace)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Birth Time:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data
                                                    .horoscopeSocial.birthTime)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Paternal Subcaste:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.horoscopeSocial
                                                    .paternalSubcast)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Maternal Subcaste:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.horoscopeSocial
                                                    .maternalSubcast)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Gotra:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.horoscopeSocial.gotra)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Rashi:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.horoscopeSocial.rashi)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Mother Tongue:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.horoscopeSocial
                                                    .motherTongue)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 16.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        MdiIcons
                                                            .homeCityOutline,
                                                        color:
                                                            Color(0xff212435),
                                                        size: 24,
                                                      ),
                                                      SizedBox(
                                                        height: 8.sp.adjustedSp,
                                                        width: 4,
                                                      ),
                                                      Text(
                                                        "Assets and Properties",
                                                        textAlign:
                                                            TextAlign.start,
                                                        overflow:
                                                            TextOverflow.clip,
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          fontSize:
                                                              12.sp.adjustedSp,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    Get.to(() =>
                                                        AssetsAndPropertiesEdit());
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons.edit,
                                                        color:
                                                            Color(0xff212435),
                                                        size: 18,
                                                      ),
                                                      SizedBox(
                                                        height: 8.sp.adjustedSp,
                                                        width: 4,
                                                      ),
                                                      Text(
                                                        "Edit",
                                                        textAlign:
                                                            TextAlign.start,
                                                        overflow:
                                                            TextOverflow.clip,
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          fontSize:
                                                              12.sp.adjustedSp,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Own House:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data
                                                    .assetsProperties.ownHouse)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Own Car:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data
                                                    .assetsProperties.ownCar)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Own Land Agri:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.assetsProperties
                                                    .ownAgriculturalLand)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Own Commercial Land:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.assetsProperties
                                                    .ownCommericialLand)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Own any business:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.assetsProperties
                                                    .ownAnyBusiness)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 16.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons.perm_identity,
                                                        color:
                                                            Color(0xff212435),
                                                        size: 24,
                                                      ),
                                                      SizedBox(
                                                        height: 8.sp.adjustedSp,
                                                        width: 4,
                                                      ),
                                                      Text(
                                                        "Profile Description",
                                                        textAlign:
                                                            TextAlign.start,
                                                        overflow:
                                                            TextOverflow.clip,
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          fontSize:
                                                              12.sp.adjustedSp,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    Get.to(() =>
                                                        ProfileDescriptionEdit());
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons.edit,
                                                        color:
                                                            Color(0xff212435),
                                                        size: 18,
                                                      ),
                                                      SizedBox(
                                                        height: 8.sp.adjustedSp,
                                                        width: 4,
                                                      ),
                                                      Text(
                                                        "Edit",
                                                        textAlign:
                                                            TextAlign.start,
                                                        overflow:
                                                            TextOverflow.clip,
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          fontSize:
                                                              12.sp.adjustedSp,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Description:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.profileDescription
                                                    .description)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 16.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons.phone,
                                                        color:
                                                            Color(0xff212435),
                                                        size: 24,
                                                      ),
                                                      SizedBox(
                                                        height: 8.sp.adjustedSp,
                                                        width: 4,
                                                      ),
                                                      Text(
                                                        "Contact Details",
                                                        textAlign:
                                                            TextAlign.start,
                                                        overflow:
                                                            TextOverflow.clip,
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          fontSize:
                                                              12.sp.adjustedSp,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    Get.to(() =>
                                                        ContactDetailsEdit());
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons.edit,
                                                        color:
                                                            Color(0xff212435),
                                                        size: 18,
                                                      ),
                                                      SizedBox(
                                                        height: 8.sp.adjustedSp,
                                                        width: 4,
                                                      ),
                                                      Text(
                                                        "Edit",
                                                        textAlign:
                                                            TextAlign.start,
                                                        overflow:
                                                            TextOverflow.clip,
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          fontSize:
                                                              12.sp.adjustedSp,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            //mobile no
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Mobile No.:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.contactDetails.phone)
                                              ],
                                            ),
                                            //alternate no
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Alternate No.:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.contactDetails.altNo)
                                              ],
                                            ),
                                            //whatsapp no
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Whatsapp No.:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data
                                                    .contactDetails.whatsapp)
                                              ],
                                            ),
                                            //email
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Email:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.contactDetails.email)
                                              ],
                                            ),
                                            //hometown
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Hometown:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data
                                                    .contactDetails.hometown)
                                              ],
                                            ),
                                            //Country
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Country:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.contactDetails
                                                    .homeTownCountry)
                                              ],
                                            ),
                                            //State
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "State:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.contactDetails
                                                    .homeTownState)
                                              ],
                                            ),
                                            //City
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "City:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.contactDetails
                                                    .homeTownCity)
                                              ],
                                            ),
                                            //Living Country
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Living Country:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.contactDetails
                                                    .livingCountry)
                                              ],
                                            ),
                                            //Living State
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Living State:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data
                                                    .contactDetails.livingState)
                                              ],
                                            ),
                                            //Living City
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Living City:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data
                                                    .contactDetails.livingCity)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 16.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons.lock_clock,
                                                        color:
                                                            Color(0xff212435),
                                                        size: 24,
                                                      ),
                                                      SizedBox(
                                                        height: 8.sp.adjustedSp,
                                                        width: 4,
                                                      ),
                                                      Text(
                                                        "Best Time to Call",
                                                        textAlign:
                                                            TextAlign.start,
                                                        overflow:
                                                            TextOverflow.clip,
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          fontSize:
                                                              12.sp.adjustedSp,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    Get.to(() =>
                                                        BestTimeToCallEdit());
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons.edit,
                                                        color:
                                                            Color(0xff212435),
                                                        size: 18,
                                                      ),
                                                      SizedBox(
                                                        height: 8.sp.adjustedSp,
                                                        width: 4,
                                                      ),
                                                      Text(
                                                        "Edit",
                                                        textAlign:
                                                            TextAlign.start,
                                                        overflow:
                                                            TextOverflow.clip,
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          fontSize:
                                                              12.sp.adjustedSp,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "From:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.suitableTimeToCall
                                                    .callTimeFrom)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "To:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.suitableTimeToCall
                                                    .callTimeTo)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 16.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        MdiIcons.humanMale,
                                                        color:
                                                            Color(0xff212435),
                                                        size: 24,
                                                      ),
                                                      SizedBox(
                                                        height: 8.sp.adjustedSp,
                                                        width: 4,
                                                      ),
                                                      Text(
                                                        "Partner Preference",
                                                        textAlign:
                                                            TextAlign.start,
                                                        overflow:
                                                            TextOverflow.clip,
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          fontSize:
                                                              12.sp.adjustedSp,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    Get.to(() =>
                                                        PartnerPreferenceEdit());
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Icon(
                                                        Icons.edit,
                                                        color:
                                                            Color(0xff212435),
                                                        size: 18,
                                                      ),
                                                      SizedBox(
                                                        height: 8.sp.adjustedSp,
                                                        width: 4,
                                                      ),
                                                      Text(
                                                        "Edit",
                                                        textAlign:
                                                            TextAlign.start,
                                                        overflow:
                                                            TextOverflow.clip,
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          fontSize:
                                                              12.sp.adjustedSp,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Age:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.partnerPreference.age)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Religion:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data
                                                    .partnerPreference.relgion)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Caste:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(
                                                    data.partnerPreference.cast)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Height:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data
                                                    .partnerPreference.height)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Looking for:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.partnerPreference
                                                    .lookingFor)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Education:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.partnerPreference
                                                    .education)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Employment Type:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data
                                                    .partnerPreference.empType)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Occupation:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.partnerPreference
                                                    .occupation)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Annual Income:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data
                                                    .partnerPreference.income)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Manglik:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data
                                                    .partnerPreference.manglik)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Living Country:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.partnerPreference
                                                    .livingCountry)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Living State:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.partnerPreference
                                                    .livingState)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 8.sp.adjustedSp,
                                              width: 16.sp.adjustedSp,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "Living City:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(data.partnerPreference
                                                    .livingCity)
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }
                                  return Expanded(
                                    child: Container(
                                      margin: EdgeInsets.zero,
                                      padding: EdgeInsets.zero,
                                      width: 100.w,
                                      height: 50.h,
                                      color: Colors.white,
                                      child: ListView(
                                        scrollDirection: Axis.vertical,
                                        padding:
                                            EdgeInsets.all(8.sp.adjustedSp),
                                        shrinkWrap: false,
                                        //physics: ScrollPhysics(),
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.person,
                                                      color: Color(0xff212435),
                                                      size: 24,
                                                    ),
                                                    SizedBox(
                                                      height: 8.sp.adjustedSp,
                                                      width: 4,
                                                    ),
                                                    Text(
                                                      "Basic Information",
                                                      textAlign:
                                                          TextAlign.start,
                                                      overflow:
                                                          TextOverflow.clip,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize:
                                                            12.sp.adjustedSp,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Get.to(() => BasicEditPage());
                                                },
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.edit,
                                                      color: Color(0xff212435),
                                                      size: 18,
                                                    ),
                                                    SizedBox(
                                                      height: 8.sp.adjustedSp,
                                                      width: 4,
                                                    ),
                                                    Text(
                                                      "Edit",
                                                      textAlign:
                                                          TextAlign.start,
                                                      overflow:
                                                          TextOverflow.clip,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize:
                                                            12.sp.adjustedSp,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Name:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Marital Status:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Religion:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Caste:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Height:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "DOB:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Number of Children:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Children Living With:",
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.school,
                                                      color: Color(0xff212435),
                                                      size: 24,
                                                    ),
                                                    SizedBox(
                                                      height: 8.sp.adjustedSp,
                                                      width: 4,
                                                    ),
                                                    Text(
                                                      "Education and Occupation",
                                                      textAlign:
                                                          TextAlign.start,
                                                      overflow:
                                                          TextOverflow.clip,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize:
                                                            12.sp.adjustedSp,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Get.to(() =>
                                                      EducationOccupationEditPage());
                                                },
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.edit,
                                                      color: Color(0xff212435),
                                                      size: 18,
                                                    ),
                                                    SizedBox(
                                                      height: 8.sp.adjustedSp,
                                                      width: 4,
                                                    ),
                                                    Text(
                                                      "Edit",
                                                      textAlign:
                                                          TextAlign.start,
                                                      overflow:
                                                          TextOverflow.clip,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize:
                                                            12.sp.adjustedSp,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Education:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Education Details:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Employment Type:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Occupation:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Occupation Details:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Annual Income:",
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.accessibility,
                                                      color: Color(0xff212435),
                                                      size: 24,
                                                    ),
                                                    SizedBox(
                                                      height: 8.sp.adjustedSp,
                                                      width: 4,
                                                    ),
                                                    Text(
                                                      "Physical Attributes and Eating Habits",
                                                      textAlign:
                                                          TextAlign.start,
                                                      overflow:
                                                          TextOverflow.clip,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize:
                                                            12.sp.adjustedSp,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Get.to(() =>
                                                      PhysicalAttributesAndEatingHabitsPage());
                                                },
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.edit,
                                                      color: Color(0xff212435),
                                                      size: 18,
                                                    ),
                                                    SizedBox(
                                                      height: 8.sp.adjustedSp,
                                                      width: 4,
                                                    ),
                                                    Text(
                                                      "Edit",
                                                      textAlign:
                                                          TextAlign.start,
                                                      overflow:
                                                          TextOverflow.clip,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize:
                                                            12.sp.adjustedSp,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Height:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Weight:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Blood Group:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Complexion:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Body Type:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Diet:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Special Case:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Disability:",
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      MdiIcons.accountMultiple,
                                                      color: Color(0xff212435),
                                                      size: 24,
                                                    ),
                                                    SizedBox(
                                                      height: 8.sp.adjustedSp,
                                                      width: 4,
                                                    ),
                                                    Text(
                                                      "Family Details",
                                                      textAlign:
                                                          TextAlign.start,
                                                      overflow:
                                                          TextOverflow.clip,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize:
                                                            12.sp.adjustedSp,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Get.to(() =>
                                                      FamilyDetailsEdit());
                                                },
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.edit,
                                                      color: Color(0xff212435),
                                                      size: 18,
                                                    ),
                                                    SizedBox(
                                                      height: 8.sp.adjustedSp,
                                                      width: 4,
                                                    ),
                                                    Text(
                                                      "Edit",
                                                      textAlign:
                                                          TextAlign.start,
                                                      overflow:
                                                          TextOverflow.clip,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize:
                                                            12.sp.adjustedSp,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Father's Occupation:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Mother's Occupation:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Family Type:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Number of Elder Brothers:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Number of Younger Brothers:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Number of Married Brothers:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Number of Elder Sisters:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Number of Younger Sisters:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Number of Married Sisters",
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      MdiIcons
                                                          .googleCirclesCommunities,
                                                      color: Color(0xff212435),
                                                      size: 24,
                                                    ),
                                                    SizedBox(
                                                      height: 8.sp.adjustedSp,
                                                      width: 4,
                                                    ),
                                                    Text(
                                                      "Horoscope and Social",
                                                      textAlign:
                                                          TextAlign.start,
                                                      overflow:
                                                          TextOverflow.clip,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize:
                                                            12.sp.adjustedSp,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Get.to(() =>
                                                      HoroscopeSocialEditPage());
                                                },
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.edit,
                                                      color: Color(0xff212435),
                                                      size: 18,
                                                    ),
                                                    SizedBox(
                                                      height: 8.sp.adjustedSp,
                                                      width: 4,
                                                    ),
                                                    Text(
                                                      "Edit",
                                                      textAlign:
                                                          TextAlign.start,
                                                      overflow:
                                                          TextOverflow.clip,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize:
                                                            12.sp.adjustedSp,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Manglik:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Birth Place:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Birth Time:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Paternal Subcaste:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Maternal Subcaste:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Gotra:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Rashi:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Mother Tongue:",
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      MdiIcons.homeCityOutline,
                                                      color: Color(0xff212435),
                                                      size: 24,
                                                    ),
                                                    SizedBox(
                                                      height: 8.sp.adjustedSp,
                                                      width: 4,
                                                    ),
                                                    Text(
                                                      "Assets and Properties",
                                                      textAlign:
                                                          TextAlign.start,
                                                      overflow:
                                                          TextOverflow.clip,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize:
                                                            12.sp.adjustedSp,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Get.to(() =>
                                                      AssetsAndPropertiesEdit());
                                                },
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.edit,
                                                      color: Color(0xff212435),
                                                      size: 18,
                                                    ),
                                                    SizedBox(
                                                      height: 8.sp.adjustedSp,
                                                      width: 4,
                                                    ),
                                                    Text(
                                                      "Edit",
                                                      textAlign:
                                                          TextAlign.start,
                                                      overflow:
                                                          TextOverflow.clip,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize:
                                                            12.sp.adjustedSp,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Own House:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Own Car:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Own Land Agri:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Own Commercial Land:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Own any business:",
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.perm_identity,
                                                      color: Color(0xff212435),
                                                      size: 24,
                                                    ),
                                                    SizedBox(
                                                      height: 8.sp.adjustedSp,
                                                      width: 4,
                                                    ),
                                                    Text(
                                                      "Profile Description",
                                                      textAlign:
                                                          TextAlign.start,
                                                      overflow:
                                                          TextOverflow.clip,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize:
                                                            12.sp.adjustedSp,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Get.to(() =>
                                                      ProfileDescriptionEdit());
                                                },
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.edit,
                                                      color: Color(0xff212435),
                                                      size: 18,
                                                    ),
                                                    SizedBox(
                                                      height: 8.sp.adjustedSp,
                                                      width: 4,
                                                    ),
                                                    Text(
                                                      "Edit",
                                                      textAlign:
                                                          TextAlign.start,
                                                      overflow:
                                                          TextOverflow.clip,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize:
                                                            12.sp.adjustedSp,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Description:",
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.phone,
                                                      color: Color(0xff212435),
                                                      size: 24,
                                                    ),
                                                    SizedBox(
                                                      height: 8.sp.adjustedSp,
                                                      width: 4,
                                                    ),
                                                    Text(
                                                      "Contact Details",
                                                      textAlign:
                                                          TextAlign.start,
                                                      overflow:
                                                          TextOverflow.clip,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize:
                                                            12.sp.adjustedSp,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Get.to(() =>
                                                      ContactDetailsEdit());
                                                },
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.edit,
                                                      color: Color(0xff212435),
                                                      size: 18,
                                                    ),
                                                    SizedBox(
                                                      height: 8.sp.adjustedSp,
                                                      width: 4,
                                                    ),
                                                    Text(
                                                      "Edit",
                                                      textAlign:
                                                          TextAlign.start,
                                                      overflow:
                                                          TextOverflow.clip,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize:
                                                            12.sp.adjustedSp,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          //mobile no
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Mobile No.:",
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
                                          //alternate no
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Alternate No.:",
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
                                          //whatsapp no
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Whatsapp No.:",
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
                                          //email
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Email:",
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
                                          //hometown
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Hometown:",
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
                                          //Country
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Country:",
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
                                          //State
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "State:",
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
                                          //City
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "City:",
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
                                          //Living Country
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "Living Country:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          //Living State
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "Living State:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          //Living City
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "Living City:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.lock_clock,
                                                      color: Color(0xff212435),
                                                      size: 24,
                                                    ),
                                                    SizedBox(
                                                      height: 8.sp.adjustedSp,
                                                      width: 4,
                                                    ),
                                                    Text(
                                                      "Best Time to Call",
                                                      textAlign:
                                                          TextAlign.start,
                                                      overflow:
                                                          TextOverflow.clip,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize:
                                                            12.sp.adjustedSp,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Get.to(() =>
                                                      BestTimeToCallEdit());
                                                },
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.edit,
                                                      color: Color(0xff212435),
                                                      size: 18,
                                                    ),
                                                    SizedBox(
                                                      height: 8.sp.adjustedSp,
                                                      width: 4,
                                                    ),
                                                    Text(
                                                      "Edit",
                                                      textAlign:
                                                          TextAlign.start,
                                                      overflow:
                                                          TextOverflow.clip,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize:
                                                            12.sp.adjustedSp,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "From:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "To:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      MdiIcons.humanMale,
                                                      color: Color(0xff212435),
                                                      size: 24,
                                                    ),
                                                    SizedBox(
                                                      height: 8.sp.adjustedSp,
                                                      width: 4,
                                                    ),
                                                    Text(
                                                      "Partner Preference",
                                                      textAlign:
                                                          TextAlign.start,
                                                      overflow:
                                                          TextOverflow.clip,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize:
                                                            12.sp.adjustedSp,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  Get.to(() =>
                                                      PartnerPreferenceEdit());
                                                },
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.edit,
                                                      color: Color(0xff212435),
                                                      size: 18,
                                                    ),
                                                    SizedBox(
                                                      height: 8.sp.adjustedSp,
                                                      width: 4,
                                                    ),
                                                    Text(
                                                      "Edit",
                                                      textAlign:
                                                          TextAlign.start,
                                                      overflow:
                                                          TextOverflow.clip,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontSize:
                                                            12.sp.adjustedSp,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "Age:",
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
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "Religion:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "Caste:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "Height:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "Looking for:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "Education:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "Employment Type:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "Occupation:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "Annual Income:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "Manglik:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "Living Country:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "Living State:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                            width: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "Living City:",
                                                  textAlign: TextAlign.start,
                                                  overflow: TextOverflow.clip,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 10.sp.adjustedSp,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }
            return Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(0),
                child: Container(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            );
          }),
    );
  }
}
