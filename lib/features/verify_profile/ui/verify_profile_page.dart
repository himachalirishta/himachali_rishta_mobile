import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:sizer/sizer.dart';

import '../../../core/app_colors.dart';

class VerifyProfilePage extends StatelessWidget {
  const VerifyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(
          color: Theme.of(context).primaryColor,
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Theme.of(context)
                            .secondaryHeaderColor
                            .withOpacity(0.5),
                        width: 0.5.sp.adjustedSp))),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back_rounded,
                      color: Theme.of(context).primaryColor,
                    )),
                SizedBox(
                  width: 5.sp.adjustedSp,
                ),
                Text(
                  'Verify Profile',
                  style: TextStyle(
                      fontSize: 14.sp.adjustedSp,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Image.asset(
                  'assets/images/homepagelogo.jpg',
                  width: 100.sp.adjustedSp,
                ),
                SizedBox(
                  width: 10.sp.adjustedSp,
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(4.0.sp.adjustedSp),
              child: Card(
                elevation: 4,
                color: Theme.of(context).secondaryHeaderColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.sp.adjustedSp)),
                child: Padding(
                  padding: EdgeInsets.all(8.0.sp.adjustedSp),
                  child: ListView(
                    children: [
                      Text(
                        'VERIFY YOUR PROFILE BY UPLOADING VALID PHOTO ID PROOF APPROVED BY GOVT ON INDIA',
                        style: TextStyle(
                            color: Colors.white, fontSize: 14.sp.adjustedSp),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 5.sp.adjustedSp,
                      ),
                      Text(
                        'You are advised to upload a Govt approved photo Id proof Verified profile are marked with verified badge and it is makes your profile more geniune and serious',
                        style: TextStyle(
                            color: Colors.white, fontSize: 12.sp.adjustedSp),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10.sp.adjustedSp,
                      ),
                      Row(
                        children: [
                          Text('Following ID Proof are Accepted',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp.adjustedSp,
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center),
                        ],
                      ),
                      Table(
                        columnWidths: const {
                          0: FlexColumnWidth(0.1),
                          1: FlexColumnWidth(0.9),
                        },
                        children: [
                          TableRow(children: [
                            const Icon(Icons.star, color: Colors.white),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 2.0.sp.adjustedSp),
                              child: Text('Adhaar Card',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp.adjustedSp)),
                            ),
                          ]),
                          TableRow(children: [
                            const Icon(Icons.star, color: Colors.white),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 2.0.sp.adjustedSp),
                              child: Text('Voter Card',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp.adjustedSp)),
                            ),
                          ]),
                          TableRow(children: [
                            const Icon(Icons.star, color: Colors.white),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 2.0.sp.adjustedSp),
                              child: Text('Passport',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp.adjustedSp)),
                            ),
                          ]),
                          TableRow(children: [
                            const Icon(Icons.star, color: Colors.white),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 2.0.sp.adjustedSp),
                              child: Text('Driving License',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp.adjustedSp)),
                            ),
                          ]),
                        ],
                      ),
                      SizedBox(
                        height: 10.sp.adjustedSp,
                      ),
                      Text(
                        'Choose ID Proof',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp.adjustedSp,
                            fontWeight: FontWeight.w600),
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.sp, vertical: 4.sp),
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            border: Border.all(
                                color: const Color(0xff616161), width: 1.sp),
                            borderRadius: BorderRadius.circular(8.sp),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              value: "Adhaar Card",
                              items: [
                                "Adhaar Card",
                                "Voter Card",
                                "Passport",
                                "Driving License"
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              style: TextStyle(
                                color: const Color(0xff000000),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                              ),
                              onChanged: (value) {},
                              elevation: 8,
                              isExpanded: true,
                            ),
                          )),
                      SizedBox(
                        height: 5.sp.adjustedSp,
                      ),
                      Text(
                        'Your ID Proof will not be shared with other members. It will be viewed by internal team only.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp.adjustedSp,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10.sp.adjustedSp,
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10.sp.adjustedSp)),
                        child: Padding(
                          padding: EdgeInsets.all(8.0.sp.adjustedSp),
                          child: Column(
                            children: [
                              Text('Upload ID Proof',
                                  style: TextStyle(
                                      fontSize: 12.sp.adjustedSp,
                                      fontWeight: FontWeight.w600)),
                              SizedBox(
                                height: 5.sp.adjustedSp,
                              ),
                              Image.network(
                                  'https://th.bing.com/th/id/OIP.S4MGKogMtZT3Vq4hCWR3AQHaFP?pid=ImgDet&rs=1'),
                              SizedBox(
                                height: 5.sp.adjustedSp,
                              ),
                              Row(
                                children: [
                                  FloatingActionButton.extended(
                                    onPressed: () {},
                                    label: const Text('Upload ID Proof'),
                                    backgroundColor: AppColors.green,
                                  ),
                                  const Spacer(),
                                  FloatingActionButton.extended(
                                    onPressed: () {},
                                    label: const Text('Save Changes'),
                                    backgroundColor: AppColors.infoLight,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.sp.adjustedSp,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.check_circle_outline,
                                      color: AppColors.green),
                                  SizedBox(
                                    width: 5.sp.adjustedSp,
                                  ),
                                  Text(
                                    'Approved',
                                    style: TextStyle(
                                        color: AppColors.green,
                                        fontSize: 12.sp.adjustedSp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
