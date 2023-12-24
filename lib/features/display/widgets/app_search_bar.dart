import 'package:flutter/material.dart';
import 'package:flutter_project_template_riverpod/l10n/l10n.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import '../../../core/style/style.dart';
import '../../../generated/assets.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.sizeOf(context).width * 0.9,
        height: AppDimensions.buttonHeight,
        decoration: AppThemes.boxDecoration(borderColor: Color(0xffE0DADA)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 0, top: 4, left: 16),
              child: Image.asset(Assets.imagesGoogle),
            ),
            Expanded(
                child: Center(
              child: new Text(
                "Search or Type URL",
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: SvgPicture.asset(Assets.imagesMicrophonemicro),
            ),
          ],
        ),
      ),
    );
  }
}
