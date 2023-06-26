import 'package:flutter/material.dart';
import 'package:himachali_rishta/core/app_colors.dart';

class DemoScreen extends StatelessWidget {
  const DemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 700),
        child: Container(
          width: double.infinity,
          color: AppColors.primaryBackground,
          alignment: Alignment.topCenter,
        ),
      ),
    );
  }
}
