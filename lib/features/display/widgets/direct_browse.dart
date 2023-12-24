import 'package:flutter/material.dart';
import 'package:flutter_project_template_riverpod/features/display/widgets/book_marks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../core/style/style.dart';
import '../../../core/widgets/button_with_icon.dart';
import '../../../generated/assets.dart';

class DirectBrowse extends StatelessWidget {
  const DirectBrowse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      padding: EdgeInsets.zero,
      margin: EdgeInsets.zero,
      width: MediaQuery.sizeOf(context).width * 0.9,
      decoration: AppThemes.boxDecoration(),
      child: Stack(
        children: [
          Positioned(
            top: -15,
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.9,
              child: SvgPicture.asset(Assets.imagesDirectBrowse),
            ),
          ),
          Positioned.fill(
              top: 50,
              child: Column(
                children: [
                  Gap(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: AppButtonWithIcon(
                          title: "Facebook",
                          icon: Assets.imagesFacebookfacebook,
                        ),
                      ),
                      Expanded(
                        child: AppButtonWithIcon(
                          title: "Instagram",
                          icon: Assets.imagesInstragram,
                        ),
                      ),
                      Expanded(
                        child: AppButtonWithIcon(
                          title: "Tiktok",
                          icon: Assets.imagesTiktok,
                        ),
                      ),
                      Expanded(
                          child: AppButtonWithIcon(
                        title: "Twitter",
                        icon: Assets.imagesTwitter,
                      ))
                    ],
                  ),

                  Gap(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: AppButtonWithIcon(
                          title: "Youtube",
                          icon: Assets.imagesYouTube,
                        ),
                      ),
                      Expanded(
                        child: AppButtonWithIcon(
                          title: "Linkedin",
                          icon: Assets.imagesLinkedin,
                        ),
                      ),
                      Expanded(
                        child: AppButtonWithIcon(
                          title: "Likee",
                          icon: Assets.imagesLikee,
                        ),
                      ),
                      Expanded(
                          child: AppButtonWithIcon(
                        title: "Reddit",
                        icon: Assets.imagesRddit,
                      ))
                    ],
                  ),
                  Gap(16),
                  BookMarks(),
                ],
              ))
        ],
      ),
    );
  }
}
