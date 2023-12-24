import 'package:flutter/material.dart';
import 'package:flutter_project_template_riverpod/core/widgets/button_with_icon.dart';
import 'package:flutter_project_template_riverpod/generated/assets.dart';
import 'package:gap/gap.dart';

class BookMarks extends StatelessWidget {
  const BookMarks({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "BookMarks",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Gap(16),
          Row(
            children: [
              AppButtonWithIcon(
                icon: Assets.imagesAddMore,
                title: "More",
              ),
              Gap(16),
              AppButtonWithIcon(
                icon: Assets.imagesInstragram,
                title: "Instagram",
              ),
            ],
          )
        ],
      ),
    );
  }
}
