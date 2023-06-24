///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';
import 'package:himachali_rishta/core/app_colors.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PartnerPreferenceTab extends StatelessWidget {
  const PartnerPreferenceTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: StreamBuilder<bool>(
            stream: Stream.periodic(Duration(milliseconds: 100), (_) {
              return SizerUtil.orientation == Orientation.landscape;
            }),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: snapshot.data! ? 700 : 100.w,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.family_restroom,
                            color: const Color(0xffac0f11),
                            size: 22.sp,
                          ),
                          SizedBox(
                            height: 16.sp,
                            width: 8.sp,
                          ),
                          Text(
                            "Partner Preference",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                              fontSize: 18.sp,
                              color: const Color(0xffac0f11),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "You Match Her",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 16.sp,
                                color: const Color(0xff000000),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  height: 20.h,
                                  width: 20.h,
                                  child: SfCircularChart(
                                    series: <CircularSeries>[
                                      DoughnutSeries<MatchData, String>(
                                        dataSource: [
                                          MatchData('Match', 80,
                                              Theme.of(context).primaryColor),
                                          MatchData('Not Match', 20,
                                              Color(0xffeeeeee)),
                                        ],
                                        xValueMapper: (MatchData data, _) =>
                                            data.name,
                                        yValueMapper: (MatchData data, _) =>
                                            data.value,
                                        pointColorMapper: (MatchData data, _) =>
                                            data.color,
                                        dataLabelMapper: (MatchData data, _) =>
                                            "${data.value}%",
                                        radius: '80%',
                                        legendIconType: LegendIconType.circle,
                                        dataLabelSettings: DataLabelSettings(
                                            isVisible: true,
                                            color: Colors.black,
                                            textStyle: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w500)),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 8.sp,
                                  width: 8.sp,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child:

                                      ///***If you have exported images you must have to copy those images in assets/images directory.
                                      const Image(
                                    image: NetworkImage(
                                        "https://picsum.photos/250?image=9"),
                                    height: 100,
                                    width: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16.sp,
                        width: 16.sp,
                      ),
                      Expanded(
                        flex: 1,
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          padding: const EdgeInsets.all(8),
                          shrinkWrap: false,
                          physics: const ScrollPhysics(),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          "Age",
                                          textAlign: TextAlign.start,
                                          overflow: TextOverflow.clip,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 14.sp,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                        Text(
                                          "32 yrs",
                                          textAlign: TextAlign.start,
                                          overflow: TextOverflow.clip,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 12.sp,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Icon(
                                    Icons.check_circle,
                                    color: AppColors.alternate,
                                    size: 22.sp,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          "Marital Status",
                                          textAlign: TextAlign.start,
                                          overflow: TextOverflow.clip,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 14.sp,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                        Text(
                                          "Single",
                                          textAlign: TextAlign.start,
                                          overflow: TextOverflow.clip,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 12.sp,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Icon(
                                    Icons.cancel_rounded,
                                    color: AppColors.primaryLight,
                                    size: 22.sp,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          "Religion",
                                          textAlign: TextAlign.start,
                                          overflow: TextOverflow.clip,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 14.sp,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                        Text(
                                          "Hindu",
                                          textAlign: TextAlign.start,
                                          overflow: TextOverflow.clip,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 12.sp,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Icon(
                                    Icons.check_circle,
                                    color: AppColors.alternate,
                                    size: 22.sp,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          "Caste",
                                          textAlign: TextAlign.start,
                                          overflow: TextOverflow.clip,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 14.sp,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                        Text(
                                          "Brahmin",
                                          textAlign: TextAlign.start,
                                          overflow: TextOverflow.clip,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 12.sp,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Icon(
                                    Icons.check_circle,
                                    color: AppColors.alternate,
                                    size: 22.sp,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          "Education",
                                          textAlign: TextAlign.start,
                                          overflow: TextOverflow.clip,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 14.sp,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                        Text(
                                          "B.Tech",
                                          textAlign: TextAlign.start,
                                          overflow: TextOverflow.clip,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                            fontSize: 12.sp,
                                            color: const Color(0xff000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Icon(
                                    Icons.check_circle,
                                    color: AppColors.alternate,
                                    size: 22.sp,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }
              return Container();
            }),
      ),
    );
  }
}

class MatchData {
  final String name;
  final int value;
  final Color color;

  MatchData(this.name, this.value, this.color);
}
