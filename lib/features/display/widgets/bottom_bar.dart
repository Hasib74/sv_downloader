/*
import 'package:flutter/material.dart';
import 'package:flutter_project_template_riverpod/generated/assets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/bottom_bar_custom_paint.dart';

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Path>(
      future: loadSvgPath(Assets.imagesBottomBar),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Container(
            height: 80,
            width: MediaQuery.of(context).size.width,
            child: CustomPaint(
              painter: CustomPathPainter(snapshot.data!),
            ),
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
*/
