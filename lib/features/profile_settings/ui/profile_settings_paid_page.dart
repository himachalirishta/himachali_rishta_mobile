import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ProfileSettingsPaidPage extends StatelessWidget {
  const ProfileSettingsPaidPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(
          color: Theme.of(context).primaryColor,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40.sp,
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).secondaryHeaderColor.withOpacity(0.5),
                width: 0.5.sp,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_back)),
                SizedBox(
                  width: 5.sp,
                ),
                Text('Privacy Settings',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    )),
                const Spacer(),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.sp, vertical: 2.0.sp),
                  child: Image.asset(
                    'assets/images/homepagelogo.jpg',
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 8.0.sp),
            child: Text('Control your Profile Privacy',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                )),
          ),
          Expanded(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 16.sp, vertical: 8.0.sp),
              child: ListView(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.photo,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(
                        width: 5.sp,
                      ),
                      Text('Photo Privacy',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).primaryColor,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 8.sp,
                  ),
                  ListTile(
                    title: Text('Visible to all',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        )),
                    subtitle:
                        Text('Your photo will be visible to all the members',
                            style: TextStyle(
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w500,
                            )),
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                      activeColor: Theme.of(context).secondaryHeaderColor,
                    ),
                  ),
                  ListTile(
                    title: Text('Visible to paid members',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        )),
                    subtitle:
                        Text('Your photo will be visible to paid members onlyl',
                            style: TextStyle(
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w500,
                            )),
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                      activeColor: Theme.of(context).secondaryHeaderColor,
                    ),
                  ),
                  ListTile(
                    title: Text('Visible on Request',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        )),
                    subtitle: Text(
                        'Photo will be visible after your approval to particular member request',
                        style: TextStyle(
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w500,
                        )),
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                      activeColor: Theme.of(context).secondaryHeaderColor,
                    ),
                  ),
                  SizedBox(
                    height: 8.sp,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(
                        width: 5.sp,
                      ),
                      Text('Profile Visibility',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).primaryColor,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 8.sp,
                  ),
                  ListTile(
                    title: Text('Visible to all',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        )),
                    subtitle:
                        Text('Your profile will be visible to all the members',
                            style: TextStyle(
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w500,
                            )),
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                      activeColor: Theme.of(context).secondaryHeaderColor,
                    ),
                  ),
                  ListTile(
                    title: Text('Visible to paid members',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        )),
                    subtitle: Text(
                        'Your profile will be visible to paid members onlyl',
                        style: TextStyle(
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w500,
                        )),
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                      activeColor: Theme.of(context).secondaryHeaderColor,
                    ),
                  ),
                  ListTile(
                    title: Text('Hide for all',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        )),
                    subtitle: Text(
                        'Your profile will not be visible to anyone (Premium Members Only)',
                        style: TextStyle(
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w500,
                        )),
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                      activeColor: Theme.of(context).secondaryHeaderColor,
                    ),
                  ),
                  SizedBox(
                    height: 8.sp,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(
                        width: 5.sp,
                      ),
                      Text('Contact Privacy',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).primaryColor,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 8.sp,
                  ),
                  ListTile(
                    title: Text('Visible to all',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        )),
                    subtitle:
                        Text('Your contact will be visible to all the members',
                            style: TextStyle(
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w500,
                            )),
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                      activeColor: Theme.of(context).secondaryHeaderColor,
                    ),
                  ),
                  ListTile(
                    title: Text('Visible to paid members',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        )),
                    subtitle: Text(
                        'Your contact will be visible to paid members onlyl',
                        style: TextStyle(
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w500,
                        )),
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                      activeColor: Theme.of(context).secondaryHeaderColor,
                    ),
                  ),
                  ListTile(
                    title: Text('Visible on Request',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        )),
                    subtitle: Text(
                        'Contact will be visible after your approval to particular member request',
                        style: TextStyle(
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w500,
                        )),
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                      activeColor: Theme.of(context).secondaryHeaderColor,
                    ),
                  ),
                  SizedBox(
                    height: 8.sp,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
