import 'package:counter_app/constants/app_colors.dart';
import 'package:counter_app/constants/app_text_styles.dart';
import 'package:counter_app/constants/app_texts.dart';
import 'package:counter_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  HomePage2({super.key, required this.count2});

  int count2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          AppTexts.appBarText,
          style: AppTextStyles.appBarStyle,
        ),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          child: Container(
            width: 320,
            height: 60,
            decoration: BoxDecoration(
              color: AppColors.grey,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Center(
              child: Text(
                "Сан : $count2",
                style: AppTextStyles.cTextStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
