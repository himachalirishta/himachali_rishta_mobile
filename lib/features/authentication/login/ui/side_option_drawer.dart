import 'package:flutter/material.dart';
import 'package:himachali_rishta/core/app_colors.dart';
import 'package:sizer/sizer.dart';

class SideOptionDrawer extends StatelessWidget {
  final List<String> options;
  final Function(int) onOptionSelected;

  const SideOptionDrawer(
      {Key? key, required this.options, required this.onOptionSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100.h,
        width: 75.w,
        color: Colors.white,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {
                    onOptionSelected(index);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      options[index],
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Divider(
                  color: AppColors.infoLight,
                  thickness: 1,
                  indent: 15.sp,
                  endIndent: 15.sp,
                ),
              ],
            );
          },
          itemCount: options.length,
        ));
  }
}
