import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class AppButtonWithIcon extends StatelessWidget {
  String? icon;

  String? title;

  AppButtonWithIcon({super.key, this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    print("icon $icon");

    bool isPng = icon?.contains(".png") ?? false;

    return Container(
     // height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          isPng
              ? Image(
                  image: AssetImage(icon ?? ""),
                  fit: BoxFit.contain,
                  height: 35,
                  width: 35,
                )
              : SvgPicture.asset(
                  icon ?? "",
                  fit: BoxFit.contain,
                  height: 35,
                  width: 35,
                ),
          Gap(8),
          Text(
            title ?? "",
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}
