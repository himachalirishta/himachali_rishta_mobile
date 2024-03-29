import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himachali_rishta/features/authentication/login/models/login_response.dart';
import 'package:himachali_rishta/features/authentication/login/ui/LoginPage.dart';
import 'package:himachali_rishta/features/authentication/login/ui/OtpScreen.dart';
import 'package:himachali_rishta/features/authentication/login/ui/SubmitInformationPage.dart';
import 'package:himachali_rishta/features/authentication/login/ui/UploadPhotoScreen.dart';
import 'package:himachali_rishta/features/dashboard/ui/MainDashboardPage.dart';
import 'package:himachali_rishta/features/delete_profile/ui/delete_profile_page.dart';
import 'package:himachali_rishta/features/demo_screen/ui/demo_screen.dart';
import 'package:himachali_rishta/features/interest/ui/InterestPage.dart';
import 'package:himachali_rishta/features/membership/ui/MembershipPageFree.dart';
import 'package:himachali_rishta/features/membership/ui/membership_page_paid.dart';
import 'package:himachali_rishta/features/membership/ui/membership_plan_page.dart';
import 'package:himachali_rishta/features/payment/ui/payment_page.dart';
import 'package:himachali_rishta/features/photo_request/ui/photo_request_received_page.dart';
import 'package:himachali_rishta/features/profile_settings/ui/profile_settings_free_page.dart';
import 'package:himachali_rishta/features/search/ui/SearchPage.dart';
import 'package:himachali_rishta/features/upload_photo/ui/manage_photos_page.dart';
import 'package:himachali_rishta/features/verify_profile/ui/verify_profile_page.dart';
import 'package:himachali_rishta/profile/ui/MyProfilePage.dart';
import 'package:sizer/sizer.dart';

import '../../authentication/login/ui/SubmitInformationPage2.dart';
import '../../my_profile/ui/my_profile_page.dart';
import '../../profile_settings/ui/profile_settings_paid_page.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> indexPages = [
      ListTile(
        title: Text('Login Page', style: TextStyle(fontSize: 12.sp)),
        onTap: () {
          Get.to(() => LoginPage());
        },
      ),
      ListTile(
        title: Text('Registration Page 1', style: TextStyle(fontSize: 12.sp)),
        onTap: () {
          Get.to(() => SubmitInformationPage(
                loginResponse: LoginResponse.empty(),
              ));
        },
      ),
      ListTile(
        title: Text('Registration Page 2', style: TextStyle(fontSize: 12.sp)),
        onTap: () {
          Get.to(() => SubmitInformationPage2(
                accessToken: '',
              ));
        },
      ),
      ListTile(
        title: Text('Dashboard', style: TextStyle(fontSize: 12.sp)),
        onTap: () {
          Get.to(() => MainDashboardPage(
                accessToken: '',
              ));
        },
      ),
      ListTile(
        title: Text('My Account', style: TextStyle(fontSize: 12.sp)),
        onTap: () {
          Get.to(() => MyProfilePage());
        },
      ),
      ListTile(
        title: Text('OTP Screen', style: TextStyle(fontSize: 12.sp)),
        onTap: () {
          Get.to(() => OtpScreen(
                phoneNumber: '',
                otpEntered: (otp) {},
              ));
        },
      ),
      ListTile(
        title: Text('Interest Page', style: TextStyle(fontSize: 12.sp)),
        onTap: () {
          Get.to(() => const InterestPage());
        },
      ),
      ListTile(
        title: Text('Membership Page Free', style: TextStyle(fontSize: 12.sp)),
        onTap: () {
          Get.to(() => const MembershipPageFree());
        },
      ),
      ListTile(
        title: Text('Membership Page Paid', style: TextStyle(fontSize: 12.sp)),
        onTap: () {
          Get.to(() => const MembershipPagePaid());
        },
      ),
      ListTile(
        title: Text('Membership Plan Page', style: TextStyle(fontSize: 12.sp)),
        onTap: () {
          Get.to(() => const MembershipPlanPage());
        },
      ),
      ListTile(
        title: Text('Search Page', style: TextStyle(fontSize: 12.sp)),
        onTap: () {
          Get.to(() => SearchPage());
        },
      ),
      ListTile(
        title: Text('Upload Photo Page', style: TextStyle(fontSize: 12.sp)),
        onTap: () {
          Get.to(() => UploadPhotoScreen(
                accessToken: '',
              ));
        },
      ),
      ListTile(
        title: Text('Manage Photo', style: TextStyle(fontSize: 12.sp)),
        onTap: () {
          Get.to(() => const ManagePhotosPage());
        },
      ),
      ListTile(
        title: Text('Profile Settings FREE', style: TextStyle(fontSize: 12.sp)),
        onTap: () {
          Get.to(() => const ProfileSettingsFreePage());
        },
      ),
      ListTile(
        title: Text('Profile Settings PAID', style: TextStyle(fontSize: 12.sp)),
        onTap: () {
          Get.to(() => const ProfileSettingsPaidPage());
        },
      ),
      ListTile(
        title: Text('Full Profile Page', style: TextStyle(fontSize: 12.sp)),
        onTap: () {
          Get.toNamed('/full_profile/my_profile');
        },
      ),
      ListTile(
        title: Text('Test Screen', style: TextStyle(fontSize: 12.sp)),
        onTap: () {
          Get.to(() => const DemoScreen());
        },
      ),
      ListTile(
        title: Text('My Profile', style: TextStyle(fontSize: 12.sp)),
        onTap: () {
          Get.to(() => const MyAccountPage());
        },
      ),
      ListTile(
        title: Text('Verify Profile', style: TextStyle(fontSize: 12.sp)),
        onTap: () {
          Get.to(() => const VerifyProfilePage());
        },
      ),
      ListTile(
        title: Text('Search', style: TextStyle(fontSize: 12.sp)),
        onTap: () {
          Get.to(() => SearchPage());
        },
      ),
      ListTile(
        title: Text('Photo Request', style: TextStyle(fontSize: 12.sp)),
        onTap: () {
          Get.to(() => const PhotoRequestReceivedPage());
        },
      ),
      ListTile(
        title: Text('Payment Page', style: TextStyle(fontSize: 12.sp)),
        onTap: () {
          Get.to(() => const PaymentPage());
        },
      ),
      ListTile(
        title: Text('Delete Profile', style: TextStyle(fontSize: 12.sp)),
        onTap: () {
          Get.to(() => DeleteProfilePage());
        },
      ),
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text('Index Page', style: TextStyle(fontSize: 12.sp)),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return indexPages[index];
          },
          itemCount: indexPages.length,
        ));
  }
}
