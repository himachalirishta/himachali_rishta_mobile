///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        preferredSize: Size.fromHeight(0),
        child: Container(
          color: Theme.of(context).primaryColor,
        ),
      ),
      backgroundColor: Color(0xffffffff),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
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
                fontSize: 16,
                color: Color(0xff000000),
              ),
            ),
            SizedBox(
              height: 16,
              width: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    controller: getController.controller1,
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    onChanged: (text) => FocusScope.of(context).nextFocus(),
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                    decoration: InputDecoration(
                      disabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide:
                            BorderSide(color: Color(0xff000000), width: 1),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide:
                            BorderSide(color: Color(0xff000000), width: 1),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide:
                            BorderSide(color: Color(0xff000000), width: 1),
                      ),
                      filled: false,
                      fillColor: Color(0x00f2f2f3),
                      isDense: false,
                      contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                  width: 16,
                ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    controller: getController.controller2,
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    onChanged: (text) => FocusScope.of(context).nextFocus(),
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                    decoration: InputDecoration(
                      disabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide:
                            BorderSide(color: Color(0xff000000), width: 1),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide:
                            BorderSide(color: Color(0xff000000), width: 1),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide:
                            BorderSide(color: Color(0xff000000), width: 1),
                      ),
                      filled: false,
                      fillColor: Color(0xfff2f2f3),
                      isDense: false,
                      contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                  width: 16,
                ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    controller: getController.controller3,
                    keyboardType: TextInputType.number,
                    onChanged: (text) => FocusScope.of(context).nextFocus(),
                    obscureText: false,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                    decoration: InputDecoration(
                      disabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide:
                            BorderSide(color: Color(0xff000000), width: 1),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide:
                            BorderSide(color: Color(0xff000000), width: 1),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide:
                            BorderSide(color: Color(0xff000000), width: 1),
                      ),
                      filled: false,
                      fillColor: Color(0xfff2f2f3),
                      isDense: false,
                      contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                  width: 16,
                ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    controller: getController.controller4,
                    keyboardType: TextInputType.number,
                    onChanged: (text) => FocusScope.of(context).nextFocus(),
                    obscureText: false,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                    decoration: InputDecoration(
                      disabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide:
                            BorderSide(color: Color(0xff000000), width: 1),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide:
                            BorderSide(color: Color(0xff000000), width: 1),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide:
                            BorderSide(color: Color(0xff000000), width: 1),
                      ),
                      filled: false,
                      fillColor: Color(0xfff2f2f3),
                      isDense: false,
                      contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                  width: 16,
                ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    controller: getController.controller5,
                    keyboardType: TextInputType.number,
                    onChanged: (text) => FocusScope.of(context).nextFocus(),
                    obscureText: false,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                    decoration: InputDecoration(
                      disabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide:
                            BorderSide(color: Color(0xff000000), width: 1),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide:
                            BorderSide(color: Color(0xff000000), width: 1),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide:
                            BorderSide(color: Color(0xff000000), width: 1),
                      ),
                      filled: false,
                      fillColor: Color(0xfff2f2f3),
                      isDense: false,
                      contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                  width: 16,
                ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    controller: getController.controller6,
                    keyboardType: TextInputType.number,
                    onChanged: (text) {},
                    obscureText: false,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                    decoration: InputDecoration(
                      disabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide:
                            BorderSide(color: Color(0xff000000), width: 1),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide:
                            BorderSide(color: Color(0xff000000), width: 1),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        borderSide:
                            BorderSide(color: Color(0xff000000), width: 1),
                      ),
                      filled: false,
                      fillColor: Color(0xfff2f2f3),
                      isDense: false,
                      contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 32,
              width: 16,
            ),
            MaterialButton(
              onPressed: () {
                otpEntered(getController.controller1.text +
                    getController.controller2.text +
                    getController.controller3.text +
                    getController.controller4.text +
                    getController.controller5.text +
                    getController.controller6.text);
              },
              color: Color(0xffac0f11),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                "Verify",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    color: Colors.white),
              ),
              textColor: Color(0xff000000),
              height: 40,
              minWidth: 140,
            ),
            SizedBox(
              height: 16,
              width: 16,
            ),
            Text(
              "Didn't receive OTP? RESEND",
              textAlign: TextAlign.start,
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                fontSize: 12,
                color: Color(0xff000000),
              ),
            ),
            SizedBox(
              height: 16,
              width: 16,
            ),
            Text(
              "Not $phoneNumber? Change Mobile No.",
              textAlign: TextAlign.start,
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                fontSize: 12,
                color: Color(0xff000000),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
