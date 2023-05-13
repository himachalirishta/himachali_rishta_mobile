import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/app_colors.dart';

class SubmitInformationPage2 extends StatelessWidget {
  const SubmitInformationPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: Container(
          color: Theme.of(context).primaryColor,
        ),
      ),
      body: SizedBox(
        height: 100.h,
        child: Column(
          children: [
            Container(
              height: 10.h,
              width: 100.w,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Center(
                child: Text(
                  'Submit Bride/Groom Information',
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColors.primaryTextColorDark,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return formData(context)[index];
                },
                itemCount: formData(context).length,
              ),
            )),
          ],
        ),
      ),
    );
  }

  List<Widget> formData(BuildContext context) {
    return [
      SizedBox(
        height: 16,
        width: 16,
      ),
      TextField(
        controller: TextEditingController(),
        obscureText: false,
        textAlign: TextAlign.start,
        maxLines: 1,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          fontSize: 14,
          color: Color(0xff000000),
        ),
        decoration: InputDecoration(
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(color: Color(0x55757575), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(color: Color(0x55757575), width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide(color: Color(0x55757575), width: 1),
          ),
          labelText: "Bride/Groom's Name",
          labelStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: 14,
            color: Color(0xff000000),
          ),
          filled: false,
          fillColor: Color(0xfff2f2f3),
          isDense: false,
          contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
        ),
      ),
      SizedBox(
        height: 16,
        width: 16,
      ),
      Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            border: Border.all(color: Color(0x54757575), width: 1),
            borderRadius: BorderRadius.circular(4),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              value: "Select Gender",
              items: ["Select Gender", "Male", "Female"]
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
              onChanged: (value) {},
              icon: Icon(Icons.expand_more),
              iconSize: 18,
              iconEnabledColor: Color(0xff616161),
              elevation: 8,
              isExpanded: true,
            ),
          )),
      SizedBox(
        height: 16,
        width: 16,
      ),
      Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            border: Border.all(color: Color(0x55757575), width: 1),
            borderRadius: BorderRadius.circular(4),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              value: "Select Religion",
              items: [
                "Select Religion",
                "Hindu",
                "Christian",
                "Parsi",
                "Jain",
                "Muslim",
                "Sikh",
                "Buddhist"
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
              onChanged: (value) {},
              icon: Icon(Icons.expand_more),
              iconSize: 18,
              iconEnabledColor: Color(0xff616161),
              elevation: 8,
              isExpanded: true,
            ),
          )),
      SizedBox(
        height: 16,
        width: 16,
      ),
      Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            border: Border.all(color: Color(0x55757575), width: 1),
            borderRadius: BorderRadius.circular(4),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              value: "Select Caste",
              items: ["Select Caste"]
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
              onChanged: (value) {},
              icon: Icon(Icons.expand_more),
              iconSize: 18,
              iconEnabledColor: Color(0xff616161),
              elevation: 8,
              isExpanded: true,
            ),
          )),
      SizedBox(
        height: 16,
        width: 16,
      ),
      Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            border: Border.all(color: Color(0x53757575), width: 1),
            borderRadius: BorderRadius.circular(4),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              value: "Select Marital Status",
              items: ["Select Marital Status"]
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
              onChanged: (value) {},
              icon: Icon(Icons.expand_more),
              iconSize: 18,
              iconEnabledColor: Color(0xff616161),
              elevation: 8,
              isExpanded: true,
            ),
          )),
      SizedBox(
        height: 16,
        width: 16,
      ),
      Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            border: Border.all(color: Color(0x54757575), width: 1),
            borderRadius: BorderRadius.circular(4),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              value: "No. of children",
              items: ["No. of children"]
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
              onChanged: (value) {},
              icon: Icon(Icons.expand_more),
              iconSize: 18,
              iconEnabledColor: Color(0xff616161),
              elevation: 8,
              isExpanded: true,
            ),
          )),
      SizedBox(
        height: 16,
        width: 16,
      ),
      Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            border: Border.all(color: Color(0x53757575), width: 1),
            borderRadius: BorderRadius.circular(4),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              value: "Posting this profile for",
              items: [
                "Posting this profile for",
                "Self",
                "Son",
                "Daughter",
                "Relative"
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
              onChanged: (value) {},
              icon: Icon(Icons.expand_more),
              iconSize: 18,
              iconEnabledColor: Color(0xff616161),
              elevation: 8,
              isExpanded: true,
            ),
          )),
      SizedBox(
        height: 16,
        width: 16,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "Select Date of Birth",
            textAlign: TextAlign.start,
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              fontSize: 12,
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
          Expanded(
            flex: 1,
            child: TextField(
              controller: TextEditingController(),
              obscureText: false,
              textAlign: TextAlign.start,
              maxLines: 1,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: Color(0xff000000),
              ),
              decoration: InputDecoration(
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide: BorderSide(color: Color(0x54757575), width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide: BorderSide(color: Color(0x54757575), width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide: BorderSide(color: Color(0x54757575), width: 1),
                ),
                labelText: "Day",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Color(0xff000000),
                ),
                filled: false,
                fillColor: Color(0xfff2f2f3),
                isDense: false,
                contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
              ),
            ),
          ),
          SizedBox(
            height: 16,
            width: 16,
          ),
          Expanded(
            flex: 1,
            child: TextField(
              controller: TextEditingController(),
              obscureText: false,
              textAlign: TextAlign.start,
              maxLines: 1,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: Color(0xff000000),
              ),
              decoration: InputDecoration(
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide: BorderSide(color: Color(0x53757575), width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide: BorderSide(color: Color(0x53757575), width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide: BorderSide(color: Color(0x53757575), width: 1),
                ),
                labelText: "Month",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Color(0xff000000),
                ),
                filled: false,
                fillColor: Color(0xfff2f2f3),
                isDense: false,
                contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
              ),
            ),
          ),
          SizedBox(
            height: 16,
            width: 16,
          ),
          Expanded(
            flex: 1,
            child: TextField(
              controller: TextEditingController(),
              obscureText: false,
              textAlign: TextAlign.start,
              maxLines: 1,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: Color(0xff000000),
              ),
              decoration: InputDecoration(
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide: BorderSide(color: Color(0x53757575), width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide: BorderSide(color: Color(0x53757575), width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide: BorderSide(color: Color(0x53757575), width: 1),
                ),
                labelText: "Year",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Color(0xff000000),
                ),
                filled: false,
                fillColor: Color(0xfff2f2f3),
                isDense: false,
                contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 16,
        width: 16,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: MaterialButton(
          onPressed: () {},
          color: Color(0xffac0f11),
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            "Next",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                color: AppColors.primaryTextColorDark),
          ),
          textColor: Color(0xff000000),
          height: 40,
          minWidth: 140,
        ),
      ),
    ];
  }
}
