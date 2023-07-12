///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:sizer/sizer.dart';

import '../get_controller/otp_screen_get_controller.dart';

class OtpScreen extends StatelessWidget {
  final String phoneNumber;
  final Function(String) otpEntered;

  OtpScreen({super.key, required this.phoneNumber, required this.otpEntered});

  OtpScreenGetController getController = Get.put(OtpScreenGetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(
          color: Theme.of(context).primaryColor,
        ),
      ),
      backgroundColor: const Color(0xffffffff),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder<bool>(
              stream: Stream.periodic(const Duration(seconds: 1), (_) {
                return SizerUtil.orientation == Orientation.landscape;
              }),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ConstrainedBox(
                    constraints:
                        BoxConstraints(maxWidth: snapshot.data! ? 700 : 100.w),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 8.sp.adjustedSp,
                          horizontal: 16.sp.adjustedSp),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "Check your phone. We have sent a code on $phoneNumber. Enter code to verify your mobile number.",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              fontSize: 16.sp.adjustedSp,
                              color: const Color(0xff000000),
                            ),
                          ),
                          SizedBox(
                            height: 16.sp.adjustedSp,
                            width: 16.sp.adjustedSp,
                          ),
                          OtpTextField(
                            numberOfFields: 4,
                            borderColor: Color(0xFF512DA8),
                            //set to true to show as box or false to show as dash
                            showFieldAsBox: false,
                            //runs when a code is typed in
                            onCodeChanged: (String code) {
                              //handle validation or checks here
                            },
                            //runs when every textfield is filled
                            onSubmit: (String verificationCode) {
                              getController.otpEntered = verificationCode;
                            }, // end onSubmit
                          ),
                          SizedBox(
                            height: 32.sp.adjustedSp,
                            width: 16.sp.adjustedSp,
                          ),
                          MaterialButton(
                            onPressed: () {
                              otpEntered(getController.otpEntered);
                            },
                            color: const Color(0xffac0f11),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            textColor: const Color(0xff000000),
                            height: 40.sp.adjustedSp,
                            minWidth: 140.sp.adjustedSp,
                            child: Text(
                              "Verify",
                              style: TextStyle(
                                  fontSize: 14.sp.adjustedSp,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 16.sp.adjustedSp,
                            width: 16.sp.adjustedSp,
                          ),
                          Text(
                            "Didn't receive OTP? RESEND",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              fontSize: 12.sp.adjustedSp,
                              color: const Color(0xff000000),
                            ),
                          ),
                          SizedBox(
                            height: 16.sp.adjustedSp,
                            width: 16.sp.adjustedSp,
                          ),
                          Text(
                            "Not $phoneNumber? Change Mobile No.",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              fontSize: 12.sp.adjustedSp,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }
                return Container();
              }),
        ],
      ),
    );
  }
}
