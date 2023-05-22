///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';
import 'package:himachali_rishta/core/app_colors.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> _sliverItems = [
      Container(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.zero,
          border: Border.all(color: Color(0x4d9e9e9e), width: 1),
        ),
        child: Padding(
          padding: EdgeInsets.all(4),
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
                  ///***If you have exported images you must have to copy those images in assets/images directory.
                  CircleAvatar(
                    backgroundImage:
                        NetworkImage("https://picsum.photos/250?image=9"),
                    radius: 40.sp,
                  ),

                  SizedBox(
                    height: 16.sp,
                    width: 8.sp,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "Neha Sharma",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            fontSize: 18,
                            color: Color(0xff000000),
                          ),
                        ),
                        SizedBox(
                          height: 8.sp,
                          width: 16.sp,
                        ),
                        Text(
                          "Matri ID: HRP345677",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            fontSize: 10.sp,
                            color: Color(0xffac0f11),
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
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            fontSize: 10.sp,
                            color: Color(0xff000000),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "My Profile's Relationship Manager:",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontSize: 12.sp,
                      color: Color(0xffac0f11),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.sp,
                width: 16.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "Miss Priya Choudhary (Mob. 9876543210)",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 10.sp,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 16.sp,
        width: 16.sp,
      ),
      Container(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color(0xff01052e),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(color: Color(0x4d9e9e9e), width: 1),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.sp),
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
                        fontSize: 12.sp,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.sp,
                    width: 8.sp,
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
                            fontSize: 10.sp,
                            color: Color(0xffffffff),
                          ),
                        ),
                        Icon(
                          Icons.verified,
                          color: Color(0xffac0f11),
                          size: 20.sp,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.sp,
                    width: 8.sp,
                  ),
                  Text(
                    "Online Now",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 12.sp,
                      color: Color(0xffffffff),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.zero,
                    padding: EdgeInsets.zero,
                    width: 10.sp,
                    height: 10.sp,
                    decoration: BoxDecoration(
                      color: Color(0xff018601),
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                    ),
                  ),
                ],
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
                  Expanded(
                    flex: 1,
                    child: Text(
                      "Suitable Time to contact: 6pm to 10pm",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 10.sp,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ],
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
          Icon(
            Icons.account_circle,
            color: Color(0xffac0f11),
            size: 20.sp,
          ),
          Text(
            "Basic Details",
            textAlign: TextAlign.start,
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              fontSize: 12.sp,
              color: Color(0xffac0f11),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 8.sp,
        width: 8.sp,
      ),
      Table(
        children: [
          TableRow(children: [
            Text(
              'Age',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              '24 yrs',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ]),
          TableRow(children: [
            Text(
              'Marital Status',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              'Unmarried',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ]),
          TableRow(children: [
            Text(
              'Height',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              '5ft 4inch',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ]),
          TableRow(children: [
            Text(
              'Religion',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              'Hindu',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ]),
          TableRow(children: [
            Text(
              'Profile managed by',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              'Parents',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ]),
        ],
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
          Icon(
            Icons.school,
            color: Color(0xffac0f11),
            size: 20.sp,
          ),
          Text(
            "Education and Occupation",
            textAlign: TextAlign.start,
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              fontSize: 12.sp,
              color: Color(0xffac0f11),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 8.sp,
        width: 8.sp,
      ),
      Table(
        children: [
          TableRow(children: [
            Text(
              'Education',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              'B.Tech',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ]),
          TableRow(children: [
            Text(
              'Occupation',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              'Software Developer',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ]),
          TableRow(children: [
            Text(
              'Employed in',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              'Private Company',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ]),
          TableRow(children: [
            Text(
              'Occupation Type',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              'Private Job',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ]),
        ],
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
          Icon(
            Icons.family_restroom,
            color: Color(0xffac0f11),
            size: 20.sp,
          ),
          Text(
            "Family and information",
            textAlign: TextAlign.start,
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              fontSize: 12.sp,
              color: Color(0xffac0f11),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 8.sp,
        width: 8.sp,
      ),
      Table(
        children: [
          TableRow(children: [
            Text(
              'Father Occupation',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              'Retired Govt. Employee',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ]),
          TableRow(children: [
            Text(
              'Mother Occupation',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              'House Wife',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ]),
          TableRow(children: [
            Text(
              'Brothers',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              '2 elders, 2 younger',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ]),
          TableRow(children: [
            Text(
              'Sisters',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              '1 younger',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ]),
        ],
      ),
      SizedBox(
        height: 16.sp,
        width: 16.sp,
      ),
      Container(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color(0xff01052e),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(color: Color(0x4d9e9e9e), width: 1),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.sp),
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
                    color: Color(0xffffffff),
                    size: 20.sp,
                  ),
                  Text(
                    "About her",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      fontSize: 12.sp,
                      color: Color(0xffffffff),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.sp,
                width: 16.sp,
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
                        fontSize: 10.sp,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ],
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
          Icon(
            Icons.phone,
            color: Color(0xffac0f11),
            size: 20.sp,
          ),
          Text(
            "Contact Details",
            textAlign: TextAlign.start,
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              fontSize: 12.sp,
              color: Color(0xffac0f11),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 8.sp,
        width: 8.sp,
      ),
      Table(
        children: [
          TableRow(children: [
            Text(
              'Living City',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              'Mumbai',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ]),
          TableRow(children: [
            Text(
              'Home Town',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              'Delhi',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ]),
          TableRow(children: [
            Text(
              'Mobile Number',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              '+919876543210',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ]),
          TableRow(children: [
            Text(
              'Whatsapp Number',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              '+919876543210',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ]),
          TableRow(children: [
            Text(
              'Email Address',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              'email@gmail.com',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ]),
        ],
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
          Icon(
            Icons.sunny,
            color: Color(0xffac0f11),
            size: 20.sp,
          ),
          Text(
            "Assets and properties",
            textAlign: TextAlign.start,
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              fontSize: 12.sp,
              color: Color(0xffac0f11),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 8.sp,
        width: 8.sp,
      ),
      Table(
        children: [
          TableRow(children: [
            Text(
              'Living City',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              'Mumbai',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ]),
          TableRow(children: [
            Text(
              'Home Town',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              'Delhi',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ]),
          TableRow(children: [
            Text(
              'Mobile Number',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              '+919876543210',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ]),
          TableRow(children: [
            Text(
              'Whatsapp Number',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              '+919876543210',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ]),
          TableRow(children: [
            Text(
              'Email Address',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              'email@gmail.com',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ]),
        ],
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
            "Did you like HPR123456 profile?",
            textAlign: TextAlign.start,
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              fontSize: 12.sp,
              color: Color(0xffac0f11),
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
                fontSize: 10.sp,
                color: Color(0xff000000),
              ),
            ),
          ),
        ],
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
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.favorite_border,
                  color: Color(0xffac0f11),
                  size: 20.sp,
                ),
                Text(
                  "Send Interest",
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 10.sp,
                    color: Color(0xff000000),
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
                  color: Color(0xffac0f11),
                  size: 20.sp,
                ),
                Text(
                  "Shortlist",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 10.sp,
                    color: Color(0xff000000),
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
                  size: 20.sp,
                ),
                Text(
                  "Whatsapp",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 10.sp,
                    color: Color(0xff000000),
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
                  color: Color(0xff212435),
                  size: 20.sp,
                ),
                Text(
                  "Chat Now",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 10.sp,
                    color: Color(0xff000000),
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
              fontSize: 12.sp,
              color: Color(0xff000000),
            ),
          ),
          SizedBox(
            height: 16.sp,
            width: 16.sp,
          ),
          Text(
            "View All ",
            textAlign: TextAlign.start,
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              fontSize: 10.sp,
              color: Color(0xffac0f11),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 8.sp,
        width: 16.sp,
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
              fontSize: 10.sp,
              color: Color(0xff000000),
            ),
          ),
        ],
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                CircleAvatar(
                  radius: 30.sp,
                  backgroundImage:
                      NetworkImage("https://picsum.photos/250?image=9"),
                ),
                SizedBox(
                  height: 8.sp,
                  width: 8.sp,
                ),
                Text(
                  "HPR123456",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    fontSize: 12.sp,
                    color: Color(0xff000000),
                  ),
                ),
                Text(
                  "Hindu, Brahmin",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 10.sp,
                    color: Color(0xff000000),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                CircleAvatar(
                  radius: 30.sp,
                  backgroundImage:
                      NetworkImage("https://picsum.photos/250?image=9"),
                ),
                SizedBox(
                  height: 8.sp,
                  width: 8.sp,
                ),
                Text(
                  "HPR123456",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    fontSize: 12.sp,
                    color: Color(0xff000000),
                  ),
                ),
                Text(
                  "Hindu, Brahmin",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 10.sp,
                    color: Color(0xff000000),
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
      Card(
        margin: EdgeInsets.all(4.0),
        color: Color(0xffffffff),
        shadowColor: Color(0xff000000),
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: BorderSide(color: Color(0x4d9e9e9e), width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.all(8.sp),
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
                      fontSize: 12.sp,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(4),
              padding: EdgeInsets.zero,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Color(0x4d9e9e9e), width: 1),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.sp),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
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
                      height: 8.sp,
                      width: 16.sp,
                    ),
                    Text(
                      "Ending in 02:00:55 hrs",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        fontSize: 12.sp,
                        color: Color(0xffac0f11),
                      ),
                    ),
                    SizedBox(
                      height: 8.sp,
                      width: 16.sp,
                    ),
                    Text(
                      "Upgrade your membership and get 55% discount",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        fontSize: 10.sp,
                        color: Color(0xff000000),
                      ),
                    ),
                    SizedBox(
                      height: 16.sp,
                      width: 16.sp,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      color: Color(0xff018601),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Text(
                        "Upgrade Now",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Colors.white,
                        ),
                      ),
                      textColor: Color(0xff000000),
                      height: 38.sp,
                      minWidth: 138.sp,
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            automaticallyImplyLeading: false,
            expandedHeight: 30.h,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network('https://picsum.photos/250?image=9'),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                  child: _sliverItems[index],
                );
              },
              childCount: _sliverItems.length,
            ),
          )
        ],
      ),
    );
  }
}
