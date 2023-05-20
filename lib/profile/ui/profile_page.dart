import 'package:flutter/material.dart';
import 'package:himachali_rishta/core/app_colors.dart';
import 'package:himachali_rishta/profile/ui/AboutPage.dart';
import 'package:sizer/sizer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: Container(
              color: Theme.of(context).primaryColor,
            ),
          ),
          body: Column(
            children: [
              TabBar(tabs: [
                Tab(
                  child: Text(
                    'About',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor, fontSize: 16.sp),
                  ),
                ),
                Tab(
                  child: Text(
                    'Partner Preference',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor, fontSize: 13.sp),
                  ),
                ),
              ]),
              Expanded(
                child: TabBarView(
                  children: [
                    AboutPage(),
                    Center(
                      child: Text('Partner Preference'),
                    ),
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
                  padding:  EdgeInsets.symmetric(horizontal: 32.sp, vertical: 8.sp),

                  child: MaterialButton(
                    onPressed: () {},
                    color: AppColors.alternate,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0.sp),
                    ),
                    child: Row(
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
                    height: 38.sp,
                    minWidth: 138.sp,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
