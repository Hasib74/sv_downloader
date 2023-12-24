import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../core/style/style.dart';
import '../widgets/app_search_bar.dart';
import '../widgets/bottom_bar.dart';
import '../widgets/direct_browse.dart';
import '../widgets/pest_link_and_dowload_widgets.dart';

class AppDisplay extends StatelessWidget {
  const AppDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  _top(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Gap(16),
                          DirectBrowse(),
                          Gap(16),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
           // AppBottomBar(),
          ],
        ),
      ),
    );
  }

  Stack _top(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 170,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color(0xff22283E),
            border: Border.all(
              color: AppColors.borderColor,
            ),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
        ),
        Column(
          children: [
            Gap(16),
            AppSearchBar(),
            Gap(16),
            PestLinkAndDownLoadWidgets(),
          ],
        )
      ],
    );
  }
}
