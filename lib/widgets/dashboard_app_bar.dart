import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:sizer/sizer.dart';

import '../features/search/ui/SearchPage.dart';

class DashboardAppBar extends StatelessWidget {
  const DashboardAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
      MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Builder(builder: (context) {
              return GestureDetector(
                onTap: () {
                  Scaffold.of(context)
                      .openDrawer();
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.menu,
                    ),
                    SizedBox(
                      height: 4.sp.adjustedSp,
                    ),
                    Text('Menu'),
                  ],
                ),
              );
            }),
            SizedBox(
              width: 8.sp.adjustedSp,
            ),
            Image.asset(
                'assets/images/homepagelogo.jpg', width: 100.sp.adjustedSp,),
            SizedBox(
              width: 8.sp.adjustedSp,
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            Get.to(() => SearchPage());
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.search,
              ),
              SizedBox(
                height: 4.sp.adjustedSp,
              ),
              Text('Search'),
            ],
          ),
        ),
      ],
    );
  }
}
