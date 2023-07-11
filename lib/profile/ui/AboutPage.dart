///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';
import 'package:himachali_rishta/core/app_colors.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> sliverItems = [
      Container(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: const Color(0xff01052e),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16.0.sp.adjustedSp),
          border: Border.all(
              color: const Color(0x4d9e9e9e), width: 1.sp.adjustedSp),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.sp.adjustedSp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      "HPR123456",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontSize: 14.sp.adjustedSp,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4.sp.adjustedSp,
                    width: 8.sp.adjustedSp,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          "Verified",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 12.sp.adjustedSp,
                            color: const Color(0xffffffff),
                          ),
                        ),
                        Icon(
                          Icons.verified,
                          color: const Color(0xffac0f11),
                          size: 20.sp.adjustedSp,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 4.sp.adjustedSp,
                    width: 8.sp.adjustedSp,
                  ),
                  Text(
                    "Online Now",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14.sp.adjustedSp,
                      color: const Color(0xffffffff),
                    ),
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
                          color: const Color(0x4d9e9e9e),
                          width: 1.sp.adjustedSp),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4.sp.adjustedSp,
                width: 16.sp.adjustedSp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      "Suitable Time to contact: 6pm to 10pm",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 12.sp.adjustedSp,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            Icons.account_circle,
            color: const Color(0xffac0f11),
            size: 20.sp.adjustedSp,
          ),
          Text(
            "Basic Details",
            textAlign: TextAlign.start,
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              fontSize: 14.sp.adjustedSp,
              color: const Color(0xffac0f11),
            ),
          ),
        ],
      ),
      Table(
        children: [
          TableRow(children: [
            Text(
              'Age',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
            Text(
              '24 yrs',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
          ]),
          TableRow(children: [
            Text(
              'Marital Status',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
            Text(
              'Unmarried',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
          ]),
          TableRow(children: [
            Text(
              'Height',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
            Text(
              '5ft 4inch',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
          ]),
          TableRow(children: [
            Text(
              'Religion',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
            Text(
              'Hindu',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
          ]),
          TableRow(children: [
            Text(
              'Profile managed by',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
            Text(
              'Parents',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
          ]),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            Icons.school,
            color: const Color(0xffac0f11),
            size: 20.sp.adjustedSp,
          ),
          Text(
            "Education and Occupation",
            textAlign: TextAlign.start,
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              fontSize: 14.sp.adjustedSp,
              color: const Color(0xffac0f11),
            ),
          ),
        ],
      ),
      Table(
        children: [
          TableRow(children: [
            Text(
              'Education',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
            Text(
              'B.Tech',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
          ]),
          TableRow(children: [
            Text(
              'Occupation',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
            Text(
              'Software Developer',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
          ]),
          TableRow(children: [
            Text(
              'Employed in',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
            Text(
              'Private Company',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
          ]),
          TableRow(children: [
            Text(
              'Occupation Type',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
            Text(
              'Private Job',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
          ]),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            Icons.family_restroom,
            color: const Color(0xffac0f11),
            size: 20.sp.adjustedSp,
          ),
          Text(
            "Family and information",
            textAlign: TextAlign.start,
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              fontSize: 14.sp.adjustedSp,
              color: const Color(0xffac0f11),
            ),
          ),
        ],
      ),
      Table(
        children: [
          TableRow(children: [
            Text(
              'Father Occupation',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
            Text(
              'Retired Govt. Employee',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
          ]),
          TableRow(children: [
            Text(
              'Mother Occupation',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
            Text(
              'House Wife',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
          ]),
          TableRow(children: [
            Text(
              'Brothers',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
            Text(
              '2 elders, 2 younger',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
          ]),
          TableRow(children: [
            Text(
              'Sisters',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
            Text(
              '1 younger',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
          ]),
        ],
      ),
      Container(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: const Color(0xff01052e),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16.0.sp.adjustedSp),
          border: Border.all(
              color: const Color(0x4d9e9e9e), width: 1.sp.adjustedSp),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.sp.adjustedSp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.person,
                    color: const Color(0xffffffff),
                    size: 20.sp.adjustedSp,
                  ),
                  Text(
                    "About her",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      fontSize: 14.sp.adjustedSp,
                      color: const Color(0xffffffff),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4.sp.adjustedSp,
                width: 16.sp.adjustedSp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      "Thank you for visiting my profile. I am from shimla and looking for an educational decent boy.",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        fontSize: 12.sp.adjustedSp,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            Icons.phone,
            color: const Color(0xffac0f11),
            size: 20.sp.adjustedSp,
          ),
          Text(
            "Contact Details",
            textAlign: TextAlign.start,
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              fontSize: 14.sp.adjustedSp,
              color: const Color(0xffac0f11),
            ),
          ),
        ],
      ),
      Table(
        children: [
          TableRow(children: [
            Text(
              'Living City',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
            Text(
              'Mumbai',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
          ]),
          TableRow(children: [
            Text(
              'Home Town',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
            Text(
              'Delhi',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
          ]),
          TableRow(children: [
            Text(
              'Mobile Number',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
            Text(
              '+919876543210',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
          ]),
          TableRow(children: [
            Text(
              'Whatsapp Number',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
            Text(
              '+919876543210',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
          ]),
          TableRow(children: [
            Text(
              'Email Address',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
            Text(
              'email@gmail.com',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
          ]),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            Icons.sunny,
            color: const Color(0xffac0f11),
            size: 20.sp.adjustedSp,
          ),
          Text(
            "Assets and properties",
            textAlign: TextAlign.start,
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              fontSize: 14.sp.adjustedSp,
              color: const Color(0xffac0f11),
            ),
          ),
        ],
      ),
      Table(
        children: [
          TableRow(children: [
            Text(
              'Living City',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
            Text(
              'Mumbai',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
          ]),
          TableRow(children: [
            Text(
              'Home Town',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
            Text(
              'Delhi',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
          ]),
          TableRow(children: [
            Text(
              'Mobile Number',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
            Text(
              '+919876543210',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
          ]),
          TableRow(children: [
            Text(
              'Whatsapp Number',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
            Text(
              '+919876543210',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
          ]),
          TableRow(children: [
            Text(
              'Email Address',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
            Text(
              'email@gmail.com',
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 12.sp.adjustedSp),
            ),
          ]),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "Did you like HPR123456 profile?",
            textAlign: TextAlign.start,
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              fontSize: 14.sp.adjustedSp,
              color: const Color(0xffac0f11),
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
            flex: 1,
            child: Text(
              "Express interest. Shortlist HPR123456 to view later on directly contact or chat",
              textAlign: TextAlign.start,
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 12.sp.adjustedSp,
                color: const Color(0xff000000),
              ),
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
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.favorite_border,
                  color: const Color(0xffac0f11),
                  size: 20.sp.adjustedSp,
                ),
                Text(
                  "Send Interest",
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 8.sp.adjustedSp,
                    color: const Color(0xff000000),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.bookmark_border,
                  color: const Color(0xffac0f11),
                  size: 20.sp.adjustedSp,
                ),
                Text(
                  "Shortlist",
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
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  MdiIcons.whatsapp,
                  color: AppColors.alternate,
                  size: 20.sp.adjustedSp,
                ),
                Text(
                  "Whatsapp",
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
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  MdiIcons.chatProcessingOutline,
                  color: const Color(0xff212435),
                  size: 20.sp.adjustedSp,
                ),
                Text(
                  "Chat Now",
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
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  MdiIcons.shareOutline,
                  color: const Color(0xff212435),
                  size: 20.sp.adjustedSp,
                ),
                Text(
                  "Share",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 12.sp.adjustedSp,
                    color: const Color(0xff000000),
                  ),
                ),
              ],
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
            "You may also like",
            textAlign: TextAlign.start,
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              fontSize: 14.sp.adjustedSp,
              color: const Color(0xff000000),
            ),
          ),
          SizedBox(
            height: 4.sp.adjustedSp,
            width: 16.sp.adjustedSp,
          ),
          Text(
            "View All ",
            textAlign: TextAlign.start,
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              fontSize: 12.sp.adjustedSp,
              color: const Color(0xffac0f11),
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
            "You may also view similar members",
            textAlign: TextAlign.start,
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontSize: 12.sp.adjustedSp,
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
          Padding(
            padding: EdgeInsets.all(8.0.sp.adjustedSp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                CircleAvatar(
                  radius: 30.sp.adjustedSp,
                  backgroundImage:
                      const NetworkImage("https://picsum.photos/250?image=9"),
                ),
                SizedBox(
                  height: 4.sp.adjustedSp,
                  width: 8.sp.adjustedSp,
                ),
                Text(
                  "HPR123456",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    fontSize: 14.sp.adjustedSp,
                    color: const Color(0xff000000),
                  ),
                ),
                Text(
                  "Hindu, Brahmin",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 12.sp.adjustedSp,
                    color: const Color(0xff000000),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0.sp.adjustedSp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                CircleAvatar(
                  radius: 30.sp.adjustedSp,
                  backgroundImage:
                      const NetworkImage("https://picsum.photos/250?image=9"),
                ),
                SizedBox(
                  height: 4.sp.adjustedSp,
                  width: 8.sp.adjustedSp,
                ),
                Text(
                  "HPR123456",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    fontSize: 14.sp.adjustedSp,
                    color: const Color(0xff000000),
                  ),
                ),
                Text(
                  "Hindu, Brahmin",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 12.sp.adjustedSp,
                    color: const Color(0xff000000),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      Card(
        margin: EdgeInsets.all(4.0.sp.adjustedSp),
        color: const Color(0xffffffff),
        shadowColor: const Color(0xff000000),
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
          side: BorderSide(
              color: const Color(0x4d9e9e9e), width: 1.sp.adjustedSp),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.all(8.sp.adjustedSp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "Special offer for you",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 14.sp.adjustedSp,
                      color: const Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.sp.adjustedSp),
              padding: EdgeInsets.zero,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8.0.sp.adjustedSp),
                border: Border.all(
                    color: const Color(0x4d9e9e9e), width: 1.sp.adjustedSp),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.sp.adjustedSp),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Text(
                      "Up to 55% off",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontSize: 16,
                        color: Color(0xff018601),
                      ),
                    ),
                    SizedBox(
                      height: 4.sp.adjustedSp,
                      width: 16.sp.adjustedSp,
                    ),
                    Text(
                      "Ending in 02:00:55 hrs",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        fontSize: 14.sp.adjustedSp,
                        color: const Color(0xffac0f11),
                      ),
                    ),
                    SizedBox(
                      height: 4.sp.adjustedSp,
                      width: 16.sp.adjustedSp,
                    ),
                    Text(
                      "Upgrade your membership and get 55% discount",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        fontSize: 12.sp.adjustedSp,
                        color: const Color(0xff000000),
                      ),
                    ),
                    SizedBox(
                      height: 4.sp.adjustedSp,
                      width: 16.sp.adjustedSp,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      color: const Color(0xff018601),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0.sp.adjustedSp),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      textColor: const Color(0xff000000),
                      height: 38.sp.adjustedSp,
                      minWidth: 138.sp.adjustedSp,
                      child: Text(
                        "Upgrade Now",
                        style: TextStyle(
                          fontSize: 14.sp.adjustedSp,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Colors.white,
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
    ];
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 16.sp.adjustedSp, vertical: 2.0.sp.adjustedSp),
        child: ListView(
          children: [
            ...sliverItems
                .map((e) => Column(
                      children: [
                        e,
                        SizedBox(
                          height: 12.sp.adjustedSp,
                        ),
                      ],
                    ))
                .toList(),
          ],
        ),
      ),
    );
  }
}
