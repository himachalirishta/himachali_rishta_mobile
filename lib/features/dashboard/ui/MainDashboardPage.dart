///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/core/app_colors.dart';
import 'package:himachali_rishta/features/authentication/login/ui/LoginPage.dart';
import 'package:himachali_rishta/features/membership/ui/MembershipPageFree.dart';
import 'package:himachali_rishta/profile/ui/MyProfilePage.dart';
import 'package:himachali_rishta/profile/ui/profile_page.dart';
import 'package:sizer/sizer.dart';

import '../get_controllers/main_dashboard_get_controller.dart';

class MainDashboardPage extends StatelessWidget {
  MainDashboardGetController getController =
      Get.put(MainDashboardGetController());

  MainDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  const Column(
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
                ],
              ),
            ),
            Container(
              height: 7.h,
              padding: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 4.sp),
              child: Row(
                children: [
                  Obx(() {
                    return GestureDetector(
                      onTap: () {
                        getController.buttonSelected.value = 1;
                      },
                      child: Container(
                        height: 30.sp,
                        width: 40.sp,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: getController.buttonSelected.value == 1
                                ? Theme.of(context).primaryColor
                                : Colors.transparent),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'New',
                            style: TextStyle(
                                fontSize: 10.sp,
                                color: getController.buttonSelected.value == 1
                                    ? Colors.white
                                    : AppColors.secondaryTextColorLight),
                          ),
                        ),
                      ),
                    );
                  }),
                  SizedBox(
                    width: 16.sp,
                  ),
                  Obx(() {
                    return GestureDetector(
                      onTap: () {
                        getController.buttonSelected.value = 2;
                      },
                      child: Container(
                        height: 30.sp,
                        width: 40.sp,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: getController.buttonSelected.value == 2
                                ? Theme.of(context).primaryColor
                                : Colors.transparent),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Your Match',
                            style: TextStyle(
                                fontSize: 8.sp,
                                color: getController.buttonSelected.value == 2
                                    ? Colors.white
                                    : AppColors.secondaryTextColorLight),
                          ),
                        ),
                      ),
                    );
                  }),
                  SizedBox(
                    width: 16.sp,
                  ),
                  Obx(() {
                    return GestureDetector(
                      onTap: () {
                        getController.buttonSelected.value = 3;
                      },
                      child: Container(
                        height: 30.sp,
                        width: 40.sp,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: getController.buttonSelected.value == 3
                                ? Theme.of(context).primaryColor
                                : Colors.transparent),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Active',
                            style: TextStyle(
                                fontSize: 10.sp,
                                color: getController.buttonSelected.value == 3
                                    ? Colors.white
                                    : AppColors.secondaryTextColorLight),
                          ),
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: ListView(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.zero,
                shrinkWrap: false,
                physics: const ScrollPhysics(),
                children: [
                  Card(
                    margin: const EdgeInsets.all(4.0),
                    color: const Color(0xffffffff),
                    shadowColor: const Color(0xff000000),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Text(
                                "HPR518619",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xffe21c3d),
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                                width: 16,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  const Text(
                                    "Last Active: Today 5:40 pm",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                    width: 8,
                                  ),
                                  Container(
                                    margin: EdgeInsets.zero,
                                    padding: EdgeInsets.zero,
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff018601),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: const Color(0x4d9e9e9e),
                                          width: 1),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                            width: 16,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child:

                                ///***If you have exported images you must have to copy those images in assets/images directory.
                                Image(
                              image: const NetworkImage(
                                  "https://picsum.photos/250?image=9"),
                              height: MediaQuery.of(context).size.height * 0.25,
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                            width: 16,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "36 yrs, Unmarried",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "Hindu, Nai/Barber, (OBC)",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 13,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "12th/10+2, Technician",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "Private Employee",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "From: Kangra",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "Lives in: Kangra/Chaumunda",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                            width: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                flex: 1,
                                child: MaterialButton(
                                  onPressed: () {},
                                  color: AppColors.alternate,
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 8),
                                  textColor: Colors.white,
                                  height: 40,
                                  minWidth: 140,
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.call,
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "Contact",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                                width: 16,
                              ),
                              Expanded(
                                flex: 1,
                                child: MaterialButton(
                                  onPressed: () {
                                    Get.to(() => ProfilePage());
                                  },
                                  color: const Color(0xff01052e),
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 8),
                                  textColor: Colors.white,
                                  height: 40,
                                  minWidth: 140,
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.more_vert,
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                      Text(
                                        "More",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
                    backgroundImage:
                        const NetworkImage('https://picsum.photos/250?image=9'),
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
                    leading: Icon(Icons.account_tree_outlined),
                    title: Text(
                      'My Account',
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: (){
                      Get.to(() => MyProfilePage());
                    },
                  ),
                  const ListTile(
                    leading: Icon(Icons.inbox),
                    title: Text(
                      'Inbox',
                      style: TextStyle(fontSize: 18),
                    ),
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
    );
  }
}
