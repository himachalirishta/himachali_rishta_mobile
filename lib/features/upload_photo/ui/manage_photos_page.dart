import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/core/app_colors.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';

class ManagePhotosPage extends StatelessWidget {
  const ManagePhotosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryBackground,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: Container(
            color: Theme.of(context).primaryColor,
          ),
        ),
        body: StreamBuilder<bool>(
            stream: Stream.periodic(const Duration(milliseconds: 500), (_) {
              return SizerUtil.orientation == Orientation.landscape;
            }),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ConstrainedBox(
                  constraints:
                      BoxConstraints(maxWidth: snapshot.data! ? 700 : 100.w),
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white,
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Get.back();
                                },
                                icon: Icon(
                                  MdiIcons.arrowLeft,
                                  color: Theme.of(context).primaryColor,
                                )),
                            Text(
                              'Manage Photos',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 14.sp.adjustedSp,
                                  fontWeight: FontWeight.w600),
                            ),
                            const Spacer(),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.0.sp.adjustedSp),
                              child: Image.asset(
                                'assets/images/homepagelogo.jpg',
                                height: 40.sp.adjustedSp,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8.sp.adjustedSp,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.sp.adjustedSp,
                            vertical: 0.0.sp.adjustedSp),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(8.sp.adjustedSp),
                              color: Theme.of(context).secondaryHeaderColor),
                          child: Padding(
                            padding: EdgeInsets.all(8.0.sp.adjustedSp),
                            child: const Text(
                              'We recommend you to upload you your 3 photos. Uploading photographs complete your profile by 30%. Profile with photographs get more attentions. You can always set privacy in your photographs in Privacy Settings. Please take care while uploading photographs, All images are reviewed by our team,unappropriated photographs will be rejected.',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2.sp.adjustedSp,
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.sp.adjustedSp,
                              vertical: 8.0.sp.adjustedSp),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 4.0.sp.adjustedSp),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Theme.of(context)
                                              .secondaryHeaderColor,
                                          width: 0.5.sp.adjustedSp,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                            8.sp.adjustedSp)),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.sp.adjustedSp,
                                          vertical: 8.0.sp.adjustedSp),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Main Profile Picture 1',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 13.sp.adjustedSp),
                                          ),
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'Upload your main profile photo',
                                                style: TextStyle(
                                                    fontSize: 10.sp.adjustedSp),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 2.sp.adjustedSp,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '(Clear, Front Facing image is recommended)',
                                                style: TextStyle(
                                                    fontSize: 10.sp.adjustedSp),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CircleAvatar(
                                                    radius: 107.sp.adjustedSp,
                                                    backgroundColor:
                                                        const Color(0xffdde5e7),
                                                  ),
                                                  CircleAvatar(
                                                    radius: 100.sp.adjustedSp,
                                                    backgroundImage:
                                                        const AssetImage(
                                                            'assets/images/femaledefault.jpg'),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            children: [
                                              FloatingActionButton.extended(
                                                onPressed: () {},
                                                label:
                                                    const Text('Upload Image'),
                                                backgroundColor: Colors.green,
                                              ),
                                              const Spacer(),
                                              FloatingActionButton.extended(
                                                onPressed: () {},
                                                label:
                                                    const Text('Save Changes'),
                                                //#4b38ef
                                                backgroundColor:
                                                    const Color(0xff4b38ef),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Approved',
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontSize: 12.sp.adjustedSp,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              SizedBox(
                                                width: 4.sp.adjustedSp,
                                              ),
                                              const Icon(
                                                Icons.check_circle_outline,
                                                color: Colors.green,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 4.0.sp.adjustedSp),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Theme.of(context)
                                              .secondaryHeaderColor,
                                          width: 0.5.sp.adjustedSp,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                            8.sp.adjustedSp)),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.sp.adjustedSp,
                                          vertical: 8.0.sp.adjustedSp),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Additional Photo 2',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 13.sp.adjustedSp),
                                          ),
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'Clear, and full head to feet photo is recommended',
                                                style: TextStyle(
                                                    fontSize: 10.sp.adjustedSp),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CircleAvatar(
                                                    radius: 107.sp.adjustedSp,
                                                    backgroundColor:
                                                        const Color(0xffdde5e7),
                                                  ),
                                                  CircleAvatar(
                                                    radius: 100.sp.adjustedSp,
                                                    backgroundImage:
                                                        const AssetImage(
                                                            'assets/images/femaledefault.jpg'),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            children: [
                                              FloatingActionButton.extended(
                                                onPressed: () {},
                                                label:
                                                    const Text('Upload Image'),
                                                backgroundColor: Colors.green,
                                              ),
                                              const Spacer(),
                                              FloatingActionButton.extended(
                                                onPressed: () {},
                                                label:
                                                    const Text('Save Changes'),
                                                //#4b38ef
                                                backgroundColor:
                                                    const Color(0xff4b38ef),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Pending for admin approval',
                                                style: TextStyle(
                                                    color:
                                                        const Color(0xffe4991e),
                                                    fontSize: 12.sp.adjustedSp,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              SizedBox(
                                                width: 4.sp.adjustedSp,
                                              ),
                                              const Icon(
                                                Icons.timelapse,
                                                color: Color(0xffe4991e),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 4.0.sp.adjustedSp),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Theme.of(context)
                                              .secondaryHeaderColor,
                                          width: 0.5.sp.adjustedSp,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                            8.sp.adjustedSp)),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.sp.adjustedSp,
                                          vertical: 8.0.sp.adjustedSp),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Additional Photo 3',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 13.sp.adjustedSp),
                                          ),
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'Clear, full size photographer is recommended',
                                                style: TextStyle(
                                                    fontSize: 10.sp.adjustedSp),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CircleAvatar(
                                                    radius: 107.sp.adjustedSp,
                                                    backgroundColor:
                                                        const Color(0xffdde5e7),
                                                  ),
                                                  CircleAvatar(
                                                    radius: 100.sp.adjustedSp,
                                                    backgroundImage:
                                                        const AssetImage(
                                                            'assets/images/femaledefault.jpg'),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            children: [
                                              FloatingActionButton.extended(
                                                onPressed: () {},
                                                label:
                                                    const Text('Upload Image'),
                                                backgroundColor: Colors.green,
                                              ),
                                              const Spacer(),
                                              FloatingActionButton.extended(
                                                onPressed: () {},
                                                label:
                                                    const Text('Save Changes'),
                                                //#4b38ef
                                                backgroundColor:
                                                    const Color(0xff4b38ef),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 16.sp.adjustedSp,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'No photo uploaded',
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 12.sp.adjustedSp,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              SizedBox(
                                                width: 4.sp.adjustedSp,
                                              ),
                                              const Icon(
                                                Icons.close,
                                                color: Colors.red,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }
              return Scaffold(
                appBar: PreferredSize(
                  preferredSize: const Size.fromHeight(0),
                  child: Container(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              );
            }));
  }
}
