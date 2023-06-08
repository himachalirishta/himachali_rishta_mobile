///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/core/app_colors.dart';
import 'package:himachali_rishta/features/authentication/login/ui/LoginPage.dart';
import 'package:himachali_rishta/features/dashboard/ui/all_tab.dart';
import 'package:himachali_rishta/features/interest/ui/InterestPage.dart';
import 'package:himachali_rishta/features/membership/ui/MembershipPageFree.dart';
import 'package:himachali_rishta/features/search/ui/SearchPage.dart';
import 'package:himachali_rishta/profile/ui/MyProfilePage.dart';
import 'package:sizer/sizer.dart';

import '../get_controllers/main_dashboard_get_controller.dart';

class MainDashboardPage extends StatelessWidget {
  final String accessToken;
  MainDashboardGetController getController =
      Get.put(MainDashboardGetController());

  MainDashboardPage({super.key, required this.accessToken});

  @override
  Widget build(BuildContext context) {
    print("Access Token: $accessToken");
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: Container(
            color: Theme.of(context).primaryColor,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: double.infinity,
                height: 7.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Builder(builder: (context) {
                          return GestureDetector(
                            onTap: () {
                              Scaffold.of(context).openDrawer();
                            },
                            child: const Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.menu,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text('Menu'),
                              ],
                            ),
                          );
                        }),
                        const SizedBox(
                          width: 8,
                        ),
                        Image.asset('assets/images/homepagelogo.jpg'),
                        const SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => SearchPage());
                      },
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.search,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text('Search'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Theme.of(context).primaryColor,
                child: const TabBar(tabs: [
                  Tab(
                    text: 'All',
                  ),
                  Tab(
                    text: 'Active',
                  ),
                  Tab(
                    text: 'Cold Calls',
                  ),
                ]),
              ),
              Expanded(
                flex: 1,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 700,
                  ),
                  child: TabBarView(
                    children: [
                      AllTab(
                        accessToken: accessToken,
                      ),
                      AllTab(
                        accessToken: accessToken,
                      ),
                      AllTab(
                        accessToken: accessToken,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 3.5.h,
                      color: Theme.of(context).primaryColor,
                    ),
                    SizedBox(
                      height: 2.sp,
                    ),
                    CircleAvatar(
                      radius: 8.h,
                      backgroundImage: const NetworkImage(
                          'https://picsum.photos/250?image=9'),
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Container(
                        height: 5.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.lineColor,
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              border: InputBorder.none,
                              hintText: 'Search',
                              hintStyle: TextStyle(fontSize: 18)),
                        ),
                      ),
                    ),
                    const ListTile(
                      leading: Icon(Icons.home),
                      title: Text(
                        'My Home',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.account_tree_outlined),
                      title: const Text(
                        'My Account',
                        style: TextStyle(fontSize: 18),
                      ),
                      onTap: () {
                        Get.to(() => const MyProfilePage());
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.inbox),
                      title: const Text(
                        'Inbox',
                        style: TextStyle(fontSize: 18),
                      ),
                      onTap: () {
                        Get.to(() => const InterestPage());
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.home_work),
                      title: const Text(
                        'Membership Plans',
                        style: TextStyle(fontSize: 18),
                      ),
                      onTap: () {
                        Get.to(() => const MembershipPageFree());
                      },
                    ),
                    const ListTile(
                      leading: Icon(Icons.person),
                      title: Text(
                        'Profile',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                color: Theme.of(context).primaryColor,
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text(
                  'Logout',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  FirebaseAuth.instance.signOut().then((value) {
                    Get.offAll(() => LoginPage());
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
