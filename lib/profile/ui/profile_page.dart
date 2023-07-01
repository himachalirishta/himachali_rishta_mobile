import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/core/app_colors.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:himachali_rishta/profile/ui/AboutPage.dart';
import 'package:himachali_rishta/profile/ui/PartnerPreferenceTab.dart';
import 'package:sizer/sizer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder<bool>(
              stream: Stream.periodic(Duration(milliseconds: 100), (_) {
                return SizerUtil.orientation == Orientation.landscape;
              }),
              builder: (context, snapshot) {
                return SizedBox(
                  width: snapshot.data! ? 700 : 100.w,
                  child: DefaultTabController(
                      length: 2,
                      child: Scaffold(
                        appBar: PreferredSize(
                          preferredSize: const Size.fromHeight(0),
                          child: Container(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        body: Column(
                          children: [
                            SizedBox(
                              height: 7.h,
                              child: Row(
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      icon: const Icon(
                                        Icons.arrow_back,
                                      )),
                                  Text(
                                    "HRP123456",
                                    style: TextStyle(fontSize: 16.sp.adjustedSp),
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Image.asset('assets/images/homepagelogo.jpg'),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.more_vert,
                                              color: Theme.of(context).primaryColor,
                                            ))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            TabBar(
                                indicatorColor: Theme.of(context).primaryColor,
                                tabs: [
                                  Tab(
                                    child: Text(
                                      'About',
                                      style: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                          fontSize: 16.sp.adjustedSp),
                                    ),
                                  ),
                                  Tab(
                                    child: Text(
                                      'Partner Preference',
                                      style: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                          fontSize: 13.sp.adjustedSp),
                                    ),
                                  ),
                                ]),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  AboutPage(),
                                  PartnerPreferenceTab(),
                                ],
                              ),
                            ),
                          ],
                        ),
                        bottomNavigationBar: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 32.sp.adjustedSp,
                                    vertical: 8.sp.adjustedSp),
                                child: MaterialButton(
                                  onPressed: () {},
                                  color: AppColors.alternate,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(4.0.sp.adjustedSp),
                                  ),
                                  height: 38.sp.adjustedSp,
                                  minWidth: 138.sp.adjustedSp,
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.call,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        'Call/Chat',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                );
              }),
        ],
      ),
    );
    ;
  }
}
