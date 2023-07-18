import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/core/app_colors.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:sizer/sizer.dart';

import '../get_controllers/delete_profile_get_controller.dart';

class DeleteProfilePage extends StatelessWidget {
  DeleteProfilePage({super.key});

  DeleteProfileGetController getController =
      Get.put(DeleteProfileGetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: Container(
          color: Theme.of(context).primaryColor,
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder<bool>(
              stream: Stream.periodic(Duration(milliseconds: 1), (_) {
                return SizerUtil.orientation == Orientation.landscape;
              }),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ConstrainedBox(
                    constraints:
                        BoxConstraints(maxWidth: snapshot.data! ? 700 : 100.w),
                    child: ListView(children: [
                      Card(
                        child: Padding(
                          padding: EdgeInsets.all(8.0.sp.adjustedSp),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(4.sp.adjustedSp),
                                  border: Border.all(
                                    color: Colors.grey,
                                    style: BorderStyle.solid,
                                    width: 0.5.sp.adjustedSp,
                                  ),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    value: getController
                                        .selectedReasonForLeaving.value,
                                    items: getController.reasonForLeaving
                                        .map((String reason) {
                                      return DropdownMenuItem<String>(
                                          value: reason,
                                          child: Text(reason,
                                              style: TextStyle(
                                                  color: AppColors
                                                      .secondaryLight.shade900,
                                                  fontSize: 12.sp.adjustedSp)));
                                    }).toList(),
                                    onChanged: (newValue) {
                                      if (newValue != null) {
                                        getController.selectedReasonForLeaving
                                            .value = newValue;
                                      }
                                    },
                                    isExpanded: true,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8.sp.adjustedSp),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(4.sp.adjustedSp),
                                  border: Border.all(
                                    color: Colors.grey,
                                    style: BorderStyle.solid,
                                    width: 0.5.sp.adjustedSp,
                                  ),
                                ),
                                child: TextFormField(
                                  maxLines: 10,
                                  decoration: InputDecoration(
                                    labelText: 'Specify Reason',
                                    labelStyle: TextStyle(
                                        color:
                                            AppColors.secondaryLight.shade900,
                                        fontSize: 12.sp.adjustedSp),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8.sp.adjustedSp),
                              Container(
                                width: double.infinity,
                                height: 35.sp.adjustedSp,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Your button action goes here.
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Theme.of(context).primaryColor),
                                  ),
                                  child: Text('Delete',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.sp.adjustedSp)),
                                ),
                              ),
                              SizedBox(height: 8.sp.adjustedSp),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'OR',
                                    style: TextStyle(
                                        fontSize: 12.sp.adjustedSp,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                              SizedBox(height: 8.sp.adjustedSp),
                              Container(
                                width: double.infinity,
                                height: 35.sp.adjustedSp,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Your button action goes here.
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color?>(
                                            AppColors.infoLight),
                                  ),
                                  child: Text('Use with Privacy Settings',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.sp.adjustedSp)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 16.sp.adjustedSp),
                      Card(
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.secondaryLight.shade900,
                                //give your dark color here
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(4.sp.adjustedSp),
                                  topRight: Radius.circular(4.sp.adjustedSp),
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8.sp.adjustedSp),
                                child: Text(
                                  'Contact Us',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp.adjustedSp),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0.sp.adjustedSp),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        """Head Office 
Near Hanuman Mandir Main Market,
Nagrota Bagwan Kangra HP 176047 
Email : admin@himachalirishta .com """,
                                        style: TextStyle(
                                            fontSize: 14.sp.adjustedSp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8.sp.adjustedSp),
                                  Container(
                                    width: double.infinity,
                                    height: 35.sp.adjustedSp,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Your button action goes here.
                                      },
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color?>(
                                                AppColors.green),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.call, color: Colors.white),
                                          SizedBox(width: 8.sp.adjustedSp),
                                          Text('Call us +91-98765-43210',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12.sp.adjustedSp)),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8.sp.adjustedSp),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '9:00am to 5:00pm only',
                                        style: TextStyle(
                                            fontSize: 14.sp.adjustedSp,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.sp.adjustedSp),
                      Card(
                        child: Padding(
                          padding: EdgeInsets.all(8.0.sp.adjustedSp),
                          child: Column(
                            children: [
                              Text(
                                'We have receved your request and will share invoice soon on emaiVWhatsapp.',
                                style: TextStyle(
                                    fontSize: 12.sp.adjustedSp,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 16.sp.adjustedSp),
                              Container(
                                height: 35.sp.adjustedSp,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Your button action goes here.
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color?>(
                                            AppColors.green),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 32.0.sp.adjustedSp),
                                    child: Text('OK',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.sp.adjustedSp)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 16.sp.adjustedSp),
                      Card(
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 35.sp.adjustedSp,
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(4.sp.adjustedSp),
                              decoration: BoxDecoration(
                                color: AppColors.secondaryLight.shade900,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(4.sp.adjustedSp),
                                  topRight: Radius.circular(4.sp.adjustedSp),
                                ),
                              ),
                              child: Text(
                                "Report HPR123345",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.sp.adjustedSp),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.sp.adjustedSp),
                              child: Column(
                                children: [
                                  // Dark Container with top border radius

                                  SizedBox(height: 8.sp.adjustedSp),

                                  // TextFormField with border and maxlines 10
                                  TextFormField(
                                    maxLines: 10,
                                    decoration: InputDecoration(
                                      labelText: 'Why do you want to report?',
                                      labelStyle: TextStyle(
                                          fontSize: 12.sp.adjustedSp,
                                          fontWeight: FontWeight.w500),
                                      border:
                                          OutlineInputBorder(), // Add border to TextFormField
                                    ),
                                  ),

                                  SizedBox(height: 8.sp.adjustedSp),

                                  // Buttons Layout
                                  Row(
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              primary: AppColors.accent1Light),
                                          child: Text('Cancel'),
                                        ),
                                      ),
                                      SizedBox(width: 8.sp.adjustedSp),
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              primary: AppColors.infoLight),
                                          child: Text('Submit'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.sp.adjustedSp),
                      Card(
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 35.sp.adjustedSp,
                              padding: EdgeInsets.all(4.sp.adjustedSp),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: AppColors.secondaryLight.shade900,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(4.sp.adjustedSp),
                                  topRight: Radius.circular(4.sp.adjustedSp),
                                ),
                              ),
                              child: Text(
                                "Account Deactivated",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.sp.adjustedSp),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.sp.adjustedSp),
                              child: Column(
                                children: [
                                  // Dark Container with top border radius

                                  SizedBox(height: 8.sp.adjustedSp),

                                  // Asset image
                                  Image.asset("assets/images/no.png",
                                      height: 100.sp.adjustedSp),

                                  SizedBox(height: 8.sp.adjustedSp),

                                  // Text widget
                                  Text(
                                      "Your Profile has been Banned. Your profile is not visible on our platform and you won't be able to use our services. This may be due to many reasons including violations of our Terms & Conditions. If You believe it has been done by mistake, send an email to \$email with your concern."),

                                  SizedBox(height: 8.sp.adjustedSp),

                                  // Clickable and underlined text
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Read our Terms and Conditions',
                                      style: TextStyle(
                                          decoration: TextDecoration.underline),
                                    ),
                                  ),

                                  SizedBox(height: 8.sp.adjustedSp),

                                  // Button with an icon of email
                                  SizedBox(
                                    height: 35.sp.adjustedSp,
                                    child: ElevatedButton.icon(
                                      onPressed: () {},
                                      icon: Icon(Icons.email),
                                      label: Text('Write email to Support'),
                                      style: ElevatedButton.styleFrom(
                                          primary: AppColors.infoLight),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.sp.adjustedSp),
                      Card(
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(8.sp.adjustedSp),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(4.sp.adjustedSp),
                                  topRight: Radius.circular(4.sp.adjustedSp),
                                ),
                              ),
                              child: Text(
                                "HR12345 Contact Details?",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.sp.adjustedSp),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.sp.adjustedSp),
                              child: Column(
                                children: [
                                  // Dark Container

                                  SizedBox(height: 8.sp.adjustedSp),

                                  // Icon
                                  Icon(
                                    Icons.lock,
                                    size: 36.sp.adjustedSp,
                                    color: Colors.grey,
                                  ),

                                  SizedBox(height: 8.sp.adjustedSp),

                                  // Text
                                  Text(
                                    "HPR123456 has set privacy on her/his Contact Details . You can contact with her/him through Email or Chat. You can exchange your contact details in Chatbox . ",
                                    style: TextStyle(
                                      fontSize: 12.sp.adjustedSp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),

                                  SizedBox(height: 8.sp.adjustedSp),

                                  // Button with messenger icon
                                  // Messenger button
                                  Container(
                                    height: 35.sp.adjustedSp,
                                    width: double.infinity,
                                    child: ElevatedButton.icon(
                                      onPressed: () {},
                                      icon: Icon(Icons.message),
                                      label: Text('Contact on chat'),
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  AppColors.secondaryLight
                                                      .shade900)),
                                    ),
                                  ),

                                  SizedBox(height: 8.sp.adjustedSp),

                                  // Email button
                                  Container(
                                    height: 35.sp.adjustedSp,
                                    width: double.infinity,
                                    child: ElevatedButton.icon(
                                      onPressed: () {},
                                      icon: Icon(Icons.email),
                                      label: Text('Email'),
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  AppColors.infoLight)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.sp.adjustedSp),
                      Card(
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 35.sp.adjustedSp,
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(4.sp.adjustedSp),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8.sp.adjustedSp),
                                  topRight: Radius.circular(8.sp.adjustedSp),
                                ),
                              ),
                              child: Text(
                                "HR123345 Contact Details?",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.sp.adjustedSp),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0.sp.adjustedSp),
                              child: Column(children: <Widget>[
                                // Dark Container

                                SizedBox(height: 8.0.sp.adjustedSp),

                                // Table
                                Table(
                                  defaultColumnWidth: FlexColumnWidth(1.0),
                                  children: [
                                    TableRow(children: [
                                      Text("Name"),
                                      Text("John Doe")
                                    ]),
                                    TableRow(children: [
                                      Text("Mobile No."),
                                      Text("1234567890")
                                    ]),
                                    TableRow(children: [
                                      Text("Alternate No."),
                                      Text("0987654321")
                                    ]),
                                    TableRow(children: [
                                      Text("Whatsapp No."),
                                      Text("9876543210")
                                    ]),
                                    TableRow(children: [
                                      Text("Email ID"),
                                      Text("johndoe@gmail.com")
                                    ]),
                                    TableRow(children: [
                                      Text("Address"),
                                      Text("123, Dummy Lane")
                                    ]),
                                  ],
                                ),

                                SizedBox(height: 8.0.sp.adjustedSp),

                                // Button with a call icon
                                Container(
                                  height: 35.sp.adjustedSp,
                                  width: double.infinity,
                                  child: ElevatedButton.icon(
                                    onPressed: () {},
                                    icon: Icon(Icons.call),
                                    label: Text('Call Mobile Number'),
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                AppColors.green)),
                                  ),
                                ),

                                SizedBox(height: 8.0.sp.adjustedSp),

                                // Row of Containers
                                Row(children: <Widget>[
                                  Expanded(
                                    child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 0.5.sp.adjustedSp),
                                            borderRadius: BorderRadius.circular(
                                                4.sp.adjustedSp)),
                                        child: Column(
                                          children: <Widget>[
                                            Icon(Icons.call,
                                                color: Colors.green),
                                            Text("Call Alternate No.")
                                          ],
                                        )),
                                  ),
                                  SizedBox(width: 8.sp.adjustedSp),
                                  // Add spacing
                                  Expanded(
                                    child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 0.5.sp.adjustedSp),
                                            borderRadius: BorderRadius.circular(
                                                4.sp.adjustedSp)),
                                        child: Column(
                                          children: <Widget>[
                                            Icon(Icons.email,
                                                color: Colors.red),
                                            Text("Email")
                                          ],
                                        )),
                                  ),
                                  SizedBox(width: 8.sp.adjustedSp),
                                  // Add spacing
                                  Expanded(
                                    child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 0.5.sp.adjustedSp),
                                            borderRadius: BorderRadius.circular(
                                                4.sp.adjustedSp)),
                                        child: Column(
                                          children: <Widget>[
                                            Icon(Icons.chat,
                                                color: Colors.green),
                                            Text("Whatsapp")
                                          ],
                                        )),
                                  ),
                                ]),

                                SizedBox(height: 8.0.sp.adjustedSp),

                                // Dark Button
                                Container(
                                  height: 35.sp.adjustedSp,
                                  width: double.infinity,
                                  child: ElevatedButton.icon(
                                    onPressed: () {},
                                    icon: Icon(Icons.message),
                                    label: Text('Chat'),
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.black)),
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.sp.adjustedSp),
                      Card(
                        child: Padding(
                          padding: EdgeInsets.all(8.0.sp.adjustedSp),
                          child: Column(
                            children: [
                              // Text
                              Text(
                                "Are You Sure You Want to View Contact Details/ InitiateChat with HPR12354, One Contact Will be reduced from your contacts allotted ?",
                                textAlign: TextAlign.center,
                              ),

                              SizedBox(height: 8.0.sp.adjustedSp),

                              // Buttons
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Yes Button
                                  Expanded(
                                    child: Container(
                                      height: 35.sp.adjustedSp,
                                      margin: EdgeInsets.only(
                                          right: 4.sp.adjustedSp),
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text('Yes'),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(AppColors.green)),
                                      ),
                                    ),
                                  ),

                                  // No Button
                                  Expanded(
                                    child: Container(
                                      height: 35.sp.adjustedSp,
                                      margin: EdgeInsets.only(
                                          left: 4.sp.adjustedSp),
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text('No'),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                        Color>(
                                                    AppColors.primaryLight)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                  );
                }
                return Container();
              }),
        ],
      ),
    );
  }
}
