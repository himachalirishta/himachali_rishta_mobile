import 'package:flutter/material.dart';
import 'package:himachali_rishta/core/app_colors.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';

class MyAccountPage extends StatelessWidget {
  const MyAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        StreamBuilder<bool>(
            stream: Stream.periodic(Duration(milliseconds: 100), (_) {
              return SizerUtil.orientation == Orientation.landscape;
            }),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ConstrainedBox(
                  constraints:
                      BoxConstraints(maxWidth: snapshot.data! ? 700 : 100.w),
                  child: Scaffold(
                      backgroundColor: AppColors.primaryBackground,
                      appBar: PreferredSize(
                        preferredSize: Size.fromHeight(0),
                        child: Container(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      body: ListView(
                        children: [
                          Container(
                            color: AppColors.orange,
                            child: Padding(
                              padding: EdgeInsets.all(8.0.sp.adjustedSp),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.menu,
                                        color: Colors.white,
                                      )),
                                  SizedBox(
                                    width: 5.sp.adjustedSp,
                                  ),
                                  Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 30.sp.adjustedSp,
                                        backgroundImage: AssetImage(
                                            'assets/images/user.png'),
                                      ),
                                      Text(
                                        'Manage Photos',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10.sp.adjustedSp,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Welcome',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10.sp.adjustedSp),
                                      ),
                                      Text(
                                        'Akshay Kumar',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12.sp.adjustedSp),
                                      ),
                                      Text(
                                        'Matri ID: HRP123456',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12.sp.adjustedSp),
                                      ),
                                      Text(
                                        'Your Relationship Manager Details:',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 8.sp.adjustedSp),
                                      ),
                                      Text(
                                        'Miss Jyoti Dhiman , Mb : 9808765445,',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 8.sp.adjustedSp),
                                      ),
                                      Text(
                                        'Membership Plan : Free',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 8.sp.adjustedSp),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            color: AppColors.secondaryLight,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text('Your Profile is 78% Complete',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12.sp.adjustedSp)),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.0.sp.adjustedSp),
                                    child: LinearPercentIndicator(
                                      lineHeight: 20.sp.adjustedSp,
                                      percent: 0.78,
                                      backgroundColor: Colors.white,
                                      progressColor: AppColors.green,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.sp.adjustedSp,
                                  ),
                                  Text('Tap to complete',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12.sp.adjustedSp)),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5.sp.adjustedSp,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.0.sp.adjustedSp),
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(8.sp.adjustedSp)),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: AppColors.secondaryLight,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(
                                                8.sp.adjustedSp),
                                            topRight: Radius.circular(
                                                8.sp.adjustedSp))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'My Membership',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12.sp.adjustedSp),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.sp.adjustedSp,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0.sp.adjustedSp),
                                    child: Text(
                                      'Dear Jatinder, You are currently a free member hence cannot view contact details or Start chat with other members .Upgrade your membership and start talking with profiles that match you ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10.sp.adjustedSp),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.sp.adjustedSp,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.0.sp.adjustedSp),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: ElevatedButton(
                                              onPressed: () {},
                                              child: Text(
                                                'Upgrade',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12.sp.adjustedSp),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    AppColors.green,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.sp.adjustedSp)),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.sp.adjustedSp,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5.sp.adjustedSp,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.0.sp.adjustedSp),
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(8.sp.adjustedSp)),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: AppColors.secondaryLight,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(
                                                8.sp.adjustedSp),
                                            topRight: Radius.circular(
                                                8.sp.adjustedSp))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'QUICK MENU',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12.sp.adjustedSp),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.sp.adjustedSp,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.0.sp.adjustedSp),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: ElevatedButton(
                                              onPressed: () {},
                                              child: Padding(
                                                padding: EdgeInsets.all(
                                                    8.0.sp.adjustedSp),
                                                child: Text(
                                                  'My Interests',
                                                  style: TextStyle(
                                                      color: AppColors
                                                          .primaryTextColorLight,
                                                      fontSize:
                                                          12.sp.adjustedSp),
                                                ),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.sp.adjustedSp)),
                                                side: BorderSide(
                                                    color: AppColors
                                                        .secondaryLight,
                                                    width: 0.5.sp.adjustedSp),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.sp.adjustedSp,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.0.sp.adjustedSp),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: ElevatedButton(
                                              onPressed: () {},
                                              child: Padding(
                                                padding: EdgeInsets.all(
                                                    8.0.sp.adjustedSp),
                                                child: Text(
                                                  'Shortlisted Profiles',
                                                  style: TextStyle(
                                                      color: AppColors
                                                          .primaryTextColorLight,
                                                      fontSize:
                                                          12.sp.adjustedSp),
                                                ),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.sp.adjustedSp)),
                                                side: BorderSide(
                                                    color: AppColors
                                                        .secondaryLight,
                                                    width: 0.5.sp.adjustedSp),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.sp.adjustedSp,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.0.sp.adjustedSp),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: ElevatedButton(
                                              onPressed: () {},
                                              child: Padding(
                                                padding: EdgeInsets.all(
                                                    8.0.sp.adjustedSp),
                                                child: Text(
                                                  'My Matches',
                                                  style: TextStyle(
                                                      color: AppColors
                                                          .primaryTextColorLight,
                                                      fontSize:
                                                          12.sp.adjustedSp),
                                                ),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.sp.adjustedSp)),
                                                side: BorderSide(
                                                    color: AppColors
                                                        .secondaryLight,
                                                    width: 0.5.sp.adjustedSp),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.sp.adjustedSp,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.0.sp.adjustedSp),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: ElevatedButton(
                                              onPressed: () {},
                                              child: Padding(
                                                padding: EdgeInsets.all(
                                                    8.0.sp.adjustedSp),
                                                child: Text(
                                                  'Less Viewed Profiles',
                                                  style: TextStyle(
                                                      color: AppColors
                                                          .primaryTextColorLight,
                                                      fontSize:
                                                          12.sp.adjustedSp),
                                                ),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.sp.adjustedSp)),
                                                side: BorderSide(
                                                    color: AppColors
                                                        .secondaryLight,
                                                    width: 0.5.sp.adjustedSp),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.sp.adjustedSp,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.0.sp.adjustedSp),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: ElevatedButton(
                                              onPressed: () {},
                                              child: Padding(
                                                padding: EdgeInsets.all(
                                                    8.0.sp.adjustedSp),
                                                child: Text(
                                                  'Blocked Profiles',
                                                  style: TextStyle(
                                                      color: AppColors
                                                          .primaryTextColorLight,
                                                      fontSize:
                                                          12.sp.adjustedSp),
                                                ),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.sp.adjustedSp)),
                                                side: BorderSide(
                                                    color: AppColors
                                                        .secondaryLight,
                                                    width: 0.5.sp.adjustedSp),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.sp.adjustedSp,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.0.sp.adjustedSp),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: ElevatedButton(
                                              onPressed: () {},
                                              child: Padding(
                                                padding: EdgeInsets.all(
                                                    8.0.sp.adjustedSp),
                                                child: Text(
                                                  'New Profiles',
                                                  style: TextStyle(
                                                      color: AppColors
                                                          .primaryTextColorLight,
                                                      fontSize:
                                                          12.sp.adjustedSp),
                                                ),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.sp.adjustedSp)),
                                                side: BorderSide(
                                                    color: AppColors
                                                        .secondaryLight,
                                                    width: 0.5.sp.adjustedSp),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.sp.adjustedSp,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.0.sp.adjustedSp),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: ElevatedButton(
                                              onPressed: () {},
                                              child: Padding(
                                                padding: EdgeInsets.all(
                                                    8.0.sp.adjustedSp),
                                                child: Text(
                                                  'Privacy Settings',
                                                  style: TextStyle(
                                                      color: AppColors
                                                          .primaryTextColorLight,
                                                      fontSize:
                                                          12.sp.adjustedSp),
                                                ),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.sp.adjustedSp)),
                                                side: BorderSide(
                                                    color: AppColors
                                                        .secondaryLight,
                                                    width: 0.5.sp.adjustedSp),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.sp.adjustedSp,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5.sp.adjustedSp,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.0.sp.adjustedSp),
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(8.sp.adjustedSp)),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: AppColors.secondaryLight,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(
                                                8.sp.adjustedSp),
                                            topRight: Radius.circular(
                                                8.sp.adjustedSp))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'My Membership',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12.sp.adjustedSp),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.sp.adjustedSp,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.0.sp.adjustedSp),
                                    child: Table(
                                      children: [
                                        TableRow(children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 4.0.sp.adjustedSp),
                                            child: Text('My Current Plan',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize:
                                                        10.sp.adjustedSp)),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 4.0.sp.adjustedSp),
                                            child: Text('Plan Name',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize:
                                                        10.sp.adjustedSp)),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 4.0.sp.adjustedSp),
                                            child: Text('Date of Activation',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize:
                                                        10.sp.adjustedSp)),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 4.0.sp.adjustedSp),
                                            child: Text('12/12/2023',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize:
                                                        10.sp.adjustedSp)),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 4.0.sp.adjustedSp),
                                            child: Text('Expiry Date',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize:
                                                        10.sp.adjustedSp)),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 4.0.sp.adjustedSp),
                                            child: Text('12/12/2023',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize:
                                                        10.sp.adjustedSp)),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 4.0.sp.adjustedSp),
                                            child: Text('Contact Viewed',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize:
                                                        10.sp.adjustedSp)),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 4.0.sp.adjustedSp),
                                            child: Text('24/50',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize:
                                                        10.sp.adjustedSp)),
                                          ),
                                        ]),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.sp.adjustedSp,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.0.sp.adjustedSp),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: ElevatedButton(
                                              onPressed: () {},
                                              child: Padding(
                                                padding: EdgeInsets.all(
                                                    8.0.sp.adjustedSp),
                                                child: Text(
                                                  'Viewed Contact List',
                                                  style: TextStyle(
                                                      color: AppColors
                                                          .primaryTextColorLight,
                                                      fontSize:
                                                          12.sp.adjustedSp),
                                                ),
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.sp.adjustedSp)),
                                                side: BorderSide(
                                                    color: AppColors
                                                        .secondaryLight,
                                                    width: 0.5.sp.adjustedSp),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.sp.adjustedSp,
                                  ),
                                  Text('REQUEST INVOICE',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10.sp.adjustedSp)),
                                  SizedBox(
                                    height: 5.sp.adjustedSp,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                );
              }
              return Scaffold(
                backgroundColor: AppColors.primaryBackground,
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(0),
                  child: Container(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              );
            }),
      ],
    );
  }
}
