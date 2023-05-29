import 'package:flutter/material.dart';
import 'package:himachali_rishta/core/app_colors.dart';
import 'package:sizer/sizer.dart';

class SideOptionDrawer extends StatelessWidget {
  final List<String> options;
  final Function(int) onOptionSelected;

  SideOptionDrawer(
      {Key? key, required this.options, required this.onOptionSelected})
      : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100.h,
        width: 75.w,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              width: 75.w,
              height: 10.h,
              alignment: Alignment.center,
              child: Image.asset("assets/images/homepagelogo.jpg"),
            ),
            Divider(
              thickness: 2,
              color: AppColors.secondaryLight,
              indent: 15.sp,
              endIndent: 15.sp,
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0.sp),
              child: TextFormField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.sp),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return StreamBuilder<String>(
                      stream: Stream.periodic(Duration(milliseconds: 1), (_) {
                        return searchController.text;
                      }),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Visibility(
                            visible: options[index]
                                .toLowerCase()
                                .contains(snapshot.data!.toLowerCase()),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ListTile(
                                  title: Center(
                                    child: Text(
                                      options[index],
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  onTap: () {
                                    onOptionSelected(index);
                                  },
                                ),
                                Divider(
                                  color: AppColors.infoLight.withOpacity(0.3),
                                  thickness: 1,
                                  indent: 15.sp,
                                  endIndent: 15.sp,
                                ),
                              ],
                            ),
                          );
                        }
                        return Container();
                      });
                },
                itemCount: options.length,
              ),
            ),
          ],
        ));
  }
}
