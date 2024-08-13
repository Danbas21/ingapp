import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../assets/export_images.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: Stack(
        children: [
          Positioned(top: 0, left: 0, child: SvgPicture.asset(letterI)),
          Positioned(top: 0, left: 0, child: SvgPicture.asset(letterI2)),
          Positioned(top: 0, left: 0, child: SvgPicture.asset(letterI3)),
        ],
      ),
    );
  }
}
