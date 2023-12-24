/*
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path_drawing/path_drawing.dart';



Future<Path> loadSvgPath(String assetName) async {

  SvgPicture svg = SvgPicture.asset(assetName);
  final ByteData data = await rootBundle.load(assetName);
  final String svgString = String.fromCharCodes(data.buffer.asUint8List());
  final DrawableRoot svgRoot = await fromSvgString(svgString, 'SVG'); 
  final Path path = svgRoot.toPath();
  return path;
}

class CustomPathPainter extends CustomPainter {
  final Path path;

  CustomPathPainter(this.path);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}*/
