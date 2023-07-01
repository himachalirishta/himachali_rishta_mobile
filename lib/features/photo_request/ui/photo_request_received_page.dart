import 'package:flutter/material.dart';
import 'package:himachali_rishta/core/app_colors.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:himachali_rishta/widgets/standard_app_bar.dart';
import 'package:sizer/sizer.dart';

class PhotoRequestReceivedPage extends StatelessWidget {
  const PhotoRequestReceivedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: Container(
          color: Theme.of(context).primaryColor,
        ),
      ),
      body: StreamBuilder<bool>(
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
                  children: [
                    StandardAppBar(title: 'Photo Request'),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Theme.of(context).primaryColor,
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.all(8.0.sp.adjustedSp),
                              child: Text(
                                'Photo Requests Received',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.sp.adjustedSp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors.infoLight, width: 1.sp.adjustedSp),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8.0.sp.adjustedSp),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 8.sp.adjustedSp,
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(4.0.sp.adjustedSp),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8.0.sp.adjustedSp,
                                        vertical: 10.sp.adjustedSp),
                                    child: Text(
                                      "Pending (14)",
                                      style: TextStyle(
                                          fontSize: 10.sp.adjustedSp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          4.sp.adjustedSp),
                                      border: Border.all(
                                          color: AppColors.infoLight)),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(4.0.sp.adjustedSp),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8.0.sp.adjustedSp,
                                        vertical: 10.sp.adjustedSp),
                                    child: Text(
                                      "Pending (14)",
                                      style: TextStyle(
                                          fontSize: 10.sp.adjustedSp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          4.sp.adjustedSp),
                                      border: Border.all(
                                          color: AppColors.infoLight)),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(4.0.sp.adjustedSp),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8.0.sp.adjustedSp,
                                        vertical: 10.sp.adjustedSp),
                                    child: Text(
                                      "Pending (14)",
                                      style: TextStyle(
                                          fontSize: 10.sp.adjustedSp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          4.sp.adjustedSp),
                                      border: Border.all(
                                          color: AppColors.infoLight)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8.sp.adjustedSp,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        children: [
                          ...List.generate(10, (index) {
                            return Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0.sp.adjustedSp),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 30.sp.adjustedSp,
                                            backgroundImage: AssetImage(
                                              'assets/images/femaledefault.jpg',
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8.sp.adjustedSp,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'HPR123456',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 12.sp.adjustedSp),
                                              ),
                                              Text(
                                                '21 Yrs,Unmarried',
                                                style: TextStyle(
                                                    fontSize: 10.sp.adjustedSp),
                                              ),
                                              Text(
                                                'B Tech',
                                                style: TextStyle(
                                                    fontSize: 10.sp.adjustedSp),
                                              ),
                                              Text(
                                                'Hindu,Choudhary Girth',
                                                style: TextStyle(
                                                    fontSize: 10.sp.adjustedSp),
                                              ),
                                              Text(
                                                'From : Kangra Himachal Pradesh',
                                                style: TextStyle(
                                                    fontSize: 10.sp.adjustedSp),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8.sp.adjustedSp,
                                      ),
                                      Text(
                                        'Hi Jitender Kumar, I have seen your profile and want to view your photo.Kindly accept my request so that we can view your photographs.',
                                        style: TextStyle(
                                            fontSize: 10.sp.adjustedSp),
                                      ),
                                      SizedBox(
                                        height: 8.sp.adjustedSp,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          FloatingActionButton.extended(
                                              elevation: 2,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.sp.adjustedSp)),
                                              backgroundColor: AppColors.green,
                                              onPressed: () {},
                                              icon: Icon(Icons.check),
                                              label: Text('Accept')),
                                          FloatingActionButton.extended(
                                              elevation: 2,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.sp.adjustedSp)),
                                              onPressed: () {},
                                              icon: Icon(Icons.close),
                                              label: Text('Reject')),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: AppColors.infoLight,
                                  thickness: 1.sp.adjustedSp,
                                  indent: 8.sp.adjustedSp,
                                  endIndent: 8.sp.adjustedSp,
                                )
                              ],
                            );
                          })
                        ],
                      ),
                    )
                  ],
                ),
              );
            }
            return Container();
          }),
    );
  }
}
