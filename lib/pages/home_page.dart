import 'package:counter_app/constants/app_colors.dart';
import 'package:counter_app/constants/app_text_styles.dart';
import 'package:counter_app/constants/app_texts.dart';
import 'package:counter_app/pages/home_page_2.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void remove() {
    setState(() {
      count--;
    });
  }

  void add() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          AppTexts.appBatText,
          style: AppTextStyles.appBarStyle,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage2(count2: count),
                ),
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
                  "Сан : $count",
                  style: AppTextStyles.cTextStyle,
                ),
              ),
            ),
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  remove();
                },
                child: Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                    color: AppColors.blue,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Icon(
                    Icons.remove,
                    size: 40,
                    color: AppColors.white,
                  ),
                ),
              ),
              SizedBox(width: 40),
              InkWell(
                onTap: () {
                  add();
                },
                child: Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                    color: AppColors.blue,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Icon(
                    Icons.add,
                    size: 40,
                    color: AppColors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
