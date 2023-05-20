import 'package:flutter/material.dart';
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
                          color: Theme.of(context).primaryColor,
                          fontSize: 16.sp),
                    ),

                  ),
                  Tab(
                    child: Text(
                      'Partner Preference',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 13.sp),
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
            )));
  }
}
