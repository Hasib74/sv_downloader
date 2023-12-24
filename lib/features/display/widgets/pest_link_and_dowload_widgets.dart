import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project_template_riverpod/generated/assets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../core/style/style.dart';

class PestLinkAndDownLoadWidgets extends StatelessWidget {
  const PestLinkAndDownLoadWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      height: 140,
      width: MediaQuery.sizeOf(context).width * 0.9,
      decoration: AppThemes.boxDecoration(
          borderColor: AppColors.borderColor,
          backGroundColor: Color(0xff313A5B)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onLongPress: () async {
              FlutterClipboard.paste().then((value) {
                // Do what ever you want with the value.


                print("Copy value : $value");
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      value,
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: AppColors.deepColor,
                  ),
                );
              });
            },
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.85,
              height: AppDimensions.buttonHeight,
              decoration: AppThemes.boxDecoration(
                  borderRadius: 10,
                  borderColor: Colors.transparent,
                  backGroundColor: AppColors.deepColor),
              child: Center(
                child: Text(
                  "Paste link to download",
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(Assets.imagesPastButton),
              SvgPicture.asset(Assets.imagesSelected),
              SvgPicture.asset(Assets.imagesDowloadButton),
            ],
          )
        ],
      ),
    );
  }
}
