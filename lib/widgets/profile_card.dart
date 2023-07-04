import 'package:flutter/material.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:sizer/sizer.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.all(8.sp.adjustedSp),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.zero,
        border: Border.all(color: Color(0x4d9e9e9e), width: 1.sp.adjustedSp),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.sp.adjustedSp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                CircleAvatar(
                  radius: 35.sp.adjustedSp,
                  backgroundImage:
                      NetworkImage("https://picsum.photos/250?image=9"),
                ),
                SizedBox(
                  height: 8.sp.adjustedSp,
                  width: 16.sp.adjustedSp,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                        color: Theme.of(context).secondaryHeaderColor,
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
              color: Theme.of(context).secondaryHeaderColor,
            ),
          ),
        ],
      ),
    );
  }
}
