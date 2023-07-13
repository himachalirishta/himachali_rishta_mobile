import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/core/app_colors.dart';
import 'package:himachali_rishta/features/view_photo/ui/view_photo_page.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:sizer/sizer.dart';

import 'AboutPage.dart';
import 'PartnerPreferenceTab.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder<bool>(
                stream: Stream.periodic(const Duration(milliseconds: 100), (_) {
                  return SizerUtil.orientation == Orientation.landscape;
                }),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ConstrainedBox(
                      constraints: BoxConstraints(
                          maxWidth: snapshot.data! ? 700 : 100.w.adjustedW),
                      child: CustomScrollView(
                        slivers: [
                          SliverAppBar(
                            pinned: true,
                            snap: false,
                            floating: true,
                            expandedHeight: 200.sp.adjustedSp,
                            automaticallyImplyLeading: false,
                            flexibleSpace: FlexibleSpaceBar(
                                background: CarouselSlider(
                                    items: [
                                  GestureDetector(
                                    onTap: () {
                                      Get.to(() => ViewPhotoPage(
                                            url:
                                                'assets/images/femaledefault.jpg',
                                            networkImage: false,
                                            heroTag:
                                                'assets/images/femaledefault.jpg',
                                          ));
                                    },
                                    child: Hero(
                                      tag: 'assets/images/femaledefault.jpg',
                                      child: Image.asset(
                                        'assets/images/femaledefault.jpg',
                                        fit: BoxFit.cover,
                                        width: 100.w,
                                      ),
                                    ),
                                  )
                                ],
                                    options: CarouselOptions(
                                      autoPlay: true,
                                      autoPlayInterval:
                                          const Duration(seconds: 3),
                                      autoPlayAnimationDuration:
                                          const Duration(milliseconds: 800),
                                      autoPlayCurve: Curves.fastOutSlowIn,
                                      pauseAutoPlayOnTouch: true,
                                      viewportFraction: 1,
                                      onPageChanged: (index, reason) {
                                        // setState(() {
                                        //   _current = index;
                                        // });
                                      },
                                      enlargeCenterPage: true,
                                    ))),
                            bottom: const TabBar(
                              tabs: [
                                Tab(
                                  text: 'About',
                                ),
                                Tab(
                                  text: 'Partner Preference',
                                ),
                              ],
                            ),
                          ),
                          SliverList(
                            delegate: SliverChildBuilderDelegate(
                              (BuildContext context, int index) {
                                return index == 0
                                    ? SizedBox(
                                        height: 100.h,
                                        child: const TabBarView(
                                          children: [
                                            AboutPage(),
                                            PartnerPreferenceTab(),
                                          ],
                                        ),
                                      )
                                    : ConstrainedBox(
                                        constraints:
                                            const BoxConstraints(maxWidth: 700),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        32.sp.adjustedSp,
                                                    vertical: 8.sp.adjustedSp),
                                                child: MaterialButton(
                                                  onPressed: () {},
                                                  color: AppColors.alternate,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0.sp.adjustedSp),
                                                  ),
                                                  height: 38.sp.adjustedSp,
                                                  minWidth: 138.sp.adjustedSp,
                                                  child: const Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.call,
                                                        color: Colors.white,
                                                      ),
                                                      Text(
                                                        'Call/Chat',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      );
                              },
                              childCount: 2,
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                  return Container();
                }),
          ],
        ),
      ),
    );
  }
}
