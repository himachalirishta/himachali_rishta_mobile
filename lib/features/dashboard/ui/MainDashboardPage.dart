///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/core/app_colors.dart';
import 'package:himachali_rishta/features/authentication/login/ui/LoginPage.dart';
import 'package:himachali_rishta/features/dashboard/ui/all_tab.dart';
import 'package:himachali_rishta/features/index/ui/index_page.dart';
import 'package:himachali_rishta/features/interest/ui/InterestPage.dart';
import 'package:himachali_rishta/features/membership/ui/MembershipPageFree.dart';
import 'package:himachali_rishta/features/upload_photo/ui/manage_photos_page.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:himachali_rishta/profile/ui/MyProfilePage.dart';
import 'package:himachali_rishta/widgets/dashboard_app_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';

import '../get_controllers/main_dashboard_get_controller.dart';

class MainDashboardPage extends StatelessWidget {
  final String accessToken;
  MainDashboardGetController getController =
      Get.put(MainDashboardGetController());

  MainDashboardPage({super.key, required this.accessToken});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: StreamBuilder<bool>(
          stream: Stream.periodic(const Duration(milliseconds: 100), (_) {
            return SizerUtil.orientation == Orientation.landscape;
          }),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Scaffold(
                appBar: PreferredSize(
                  preferredSize: const Size.fromHeight(0),
                  child: Container(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                body: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: snapshot.data! ? 700 : 100.w,
                      ),
                      child: Scaffold(
                          body: Padding(
                            padding: EdgeInsets.all(8.sp.adjustedSp),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                const DashboardAppBar(),
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
                              ],
                            ),
                          ),
                          drawer: Drawer(
                            child: Column(
                              children: [
                                Expanded(
                                  child: ListView(
                                    children: [
                                      SizedBox(
                                        height: 2.sp.adjustedSp,
                                      ),
                                      CircleAvatar(
                                        radius: 50.sp.adjustedSp,
                                        backgroundImage: const NetworkImage(
                                            'https://picsum.photos/250?image=9'),
                                      ),
                                      SizedBox(
                                        height: 20.sp.adjustedSp,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.sp.adjustedSp),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            prefixIcon:
                                                const Icon(Icons.search),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      8.sp.adjustedSp),
                                              borderSide: BorderSide.none,
                                            ),
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 12.0,
                                                    horizontal: 16.0),
                                            hintText: 'Search',
                                            hintStyle: TextStyle(
                                                fontSize: 14.0.sp.adjustedSp,
                                                fontWeight: FontWeight.w500),
                                            fillColor: AppColors.lineColor,
                                            filled: true,
                                          ),
                                        ),
                                      ),
                                      ListTile(
                                        leading: const Icon(Icons.home),
                                        title: Text(
                                          'My Home',
                                          style: TextStyle(
                                              fontSize: 16.sp.adjustedSp),
                                        ),
                                      ),
                                      ListTile(
                                        leading: const Icon(
                                            Icons.account_tree_outlined),
                                        title: Text(
                                          'My Account',
                                          style: TextStyle(
                                              fontSize: 16.sp.adjustedSp),
                                        ),
                                        onTap: () {
                                          Get.to(() => MyProfilePage());
                                        },
                                      ),
                                      ListTile(
                                        leading: const Icon(Icons.inbox),
                                        title: Text(
                                          'Inbox',
                                          style: TextStyle(
                                              fontSize: 16.sp.adjustedSp),
                                        ),
                                        onTap: () {
                                          Get.to(() => const InterestPage());
                                        },
                                      ),
                                      ListTile(
                                        leading: const Icon(Icons.home_work),
                                        title: Text(
                                          'Membership Plans',
                                          style: TextStyle(
                                              fontSize: 16.sp.adjustedSp),
                                        ),
                                        onTap: () {
                                          Get.to(
                                              () => const MembershipPageFree());
                                        },
                                      ),
                                      ListTile(
                                        leading: const Icon(Icons.person),
                                        title: Text(
                                          'Profile',
                                          style: TextStyle(
                                              fontSize: 16.sp.adjustedSp),
                                        ),
                                      ),
                                      ListTile(
                                        leading: const Icon(Icons.description),
                                        title: Text(
                                          'Index',
                                          style: TextStyle(
                                              fontSize: 16.sp.adjustedSp),
                                        ),
                                        onTap: () {
                                          Get.to(() => const IndexPage());
                                        },
                                      ),
                                      ListTile(
                                        leading: const Icon(MdiIcons
                                            .pictureInPictureBottomRight),
                                        title: Text(
                                          'Manage Photos',
                                          style: TextStyle(
                                              fontSize: 16.sp.adjustedSp),
                                        ),
                                        onTap: () {
                                          Get.to(
                                              () => const ManagePhotosPage());
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  thickness: 1.5.sp.adjustedSp,
                                  color: Theme.of(context).primaryColor,
                                ),
                                ListTile(
                                  leading: const Icon(Icons.logout),
                                  title: Text(
                                    'Logout',
                                    style:
                                        TextStyle(fontSize: 16.sp.adjustedSp),
                                  ),
                                  onTap: () {
                                    FirebaseAuth.instance
                                        .signOut()
                                        .then((value) {
                                      Get.offAll(() => LoginPage());
                                    });
                                  },
                                ),
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              );
            }
            return const Scaffold();
          }),
    );
  }
}
