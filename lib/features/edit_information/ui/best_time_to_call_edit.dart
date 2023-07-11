import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/helpers/date_time_helper.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:sizer/sizer.dart';

import '../get_controllers/best_time_to_call_get_controller.dart';

class BestTimeToCallEdit extends StatelessWidget {
  BestTimeToCallEdit({super.key});

  BestTimeToCallGetController getController =
      Get.put(BestTimeToCallGetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: Container(
            color: Theme.of(context).primaryColor,
          ),
        ),
        body: StreamBuilder<bool>(
            stream: Stream.periodic(const Duration(seconds: 1), (_) {
              return SizerUtil.orientation == Orientation.landscape;
            }),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ConstrainedBox(
                  constraints: BoxConstraints(
                      maxWidth: snapshot.data! ? 700 : 100.w.adjustedW),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 16.sp, vertical: 8.0.sp),
                    child: ListView(
                      children: [
                        GestureDetector(
                          onTap: () {
                            showTimePicker(
                                    context: context,
                                    initialTime: TimeOfDay.now())
                                .then((value) {
                              if (value != null) {
                                getController.fromController.text =
                                    value.toDisplayFormatWithAmPm;
                              }
                            });
                          },
                          child: TextField(
                            enabled: false,
                            controller: getController.fromController,
                            obscureText: false,
                            textAlign: TextAlign.start,
                            maxLines: 1,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 12.sp.adjustedSp,
                              color: const Color(0xff000000),
                            ),
                            decoration: InputDecoration(
                              disabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(4.0.sp.adjustedSp),
                                borderSide: BorderSide(
                                    color: const Color(0xffe0e0e0),
                                    width: 1.sp.adjustedSp),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(4.0.sp.adjustedSp),
                                borderSide: BorderSide(
                                    color: const Color(0xffe0e0e0),
                                    width: 1.sp.adjustedSp),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(4.0.sp.adjustedSp),
                                borderSide: BorderSide(
                                    color: const Color(0xffe0e0e0),
                                    width: 1.sp.adjustedSp),
                              ),
                              labelText: "From",
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 12.sp.adjustedSp,
                                color: const Color(0xff000000),
                              ),
                              filled: false,
                              fillColor: const Color(0xfff2f2f3),
                              isDense: false,
                              suffixIcon: const Icon(
                                Icons.chevron_right,
                                color: Color(0xff000000),
                              ),
                              contentPadding: EdgeInsets.fromLTRB(
                                  12.sp.adjustedSp,
                                  8.sp.adjustedSp,
                                  12.sp.adjustedSp,
                                  8),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.sp.adjustedSp,
                          width: 16.sp.adjustedSp,
                        ),
                        GestureDetector(
                          onTap: () {
                            showTimePicker(
                                    context: context,
                                    initialTime: TimeOfDay.now())
                                .then((value) {
                              if (value != null) {
                                getController.toController.text =
                                    value.toDisplayFormatWithAmPm;
                              }
                            });
                          },
                          child: TextField(
                            enabled: false,
                            controller: getController.toController,
                            obscureText: false,
                            textAlign: TextAlign.start,
                            maxLines: 1,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 12.sp.adjustedSp,
                              color: const Color(0xff000000),
                            ),
                            decoration: InputDecoration(
                              disabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(4.0.sp.adjustedSp),
                                borderSide: BorderSide(
                                    color: const Color(0xffe0e0e0),
                                    width: 1.sp.adjustedSp),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(4.0.sp.adjustedSp),
                                borderSide: BorderSide(
                                    color: const Color(0xffe0e0e0),
                                    width: 1.sp.adjustedSp),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(4.0.sp.adjustedSp),
                                borderSide: BorderSide(
                                    color: const Color(0xffe0e0e0),
                                    width: 1.sp.adjustedSp),
                              ),
                              labelText: "To",
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 12.sp.adjustedSp,
                                color: const Color(0xff000000),
                              ),
                              filled: false,
                              fillColor: const Color(0xfff2f2f3),
                              isDense: false,
                              suffixIcon: const Icon(
                                Icons.chevron_right,
                                color: Color(0xff000000),
                              ),
                              contentPadding: EdgeInsets.fromLTRB(
                                  12.sp.adjustedSp,
                                  8.sp.adjustedSp,
                                  12.sp.adjustedSp,
                                  8),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16.sp.adjustedSp,
                          width: 16.sp.adjustedSp,
                        ),
                        MaterialButton(
                          onPressed: () {
                            getController.submitBestTimeToCall();
                          },
                          color: const Color(0xffac0f11),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(4.0.sp.adjustedSp),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          textColor: const Color(0xff000000),
                          height: 38.sp.adjustedSp,
                          minWidth: 138.sp.adjustedSp,
                          child: Text(
                            "Submit",
                            style: TextStyle(
                              fontSize: 12.sp.adjustedSp,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
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
                body: const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }));
  }
}
