import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../assets/export_images.dart';

class LogoSvg extends StatelessWidget {
  const LogoSvg({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    List<String> svgList = [
      // letterI10,
      // letterI11,

      letterI4,
      // 'N',
      letterI5,
      // 'U',
      letterI6,
      // 'E',
      letterI7,
      // 'V',
      letterI8,
      // 'A',
      letterI9,
      blank,

      // 'G',
      letterI21,
      // 'E',
      letterI22,
      // 'N',
      letterI23,
      // 'E',
      letterI24,
      // 'R',
      letterI25,
      // 'A',
      letterI26,
      // 'C',
      letterI27,

      // 'I',
      letterI28,
      letterI28,
      letterI28,

      // 'Ó',
      letterI29,
      // 'N',
      letterI30,
      // ' ',
      letterI4,
      // 'O',
      letterI20,
      // 'T',
      letterI19,
      // 'U',
      letterI18,
      // 'T',
      letterI17,
      // 'I',
      letterI16,
      // 'T',
      letterI15,
      // 'S',
      letterI14,
      // 'N',
      letterI13,
      // 'I',
      letterI12,
    ];

    const double radius = 120;
    final length = svgList.length;
    return SizedBox(
      width: radius * 2.3,
      height: radius * 2.3,
      child: Stack(
        children: List.generate(length, (index) {
          final angle = (360 / length) * index;
          final position = calculatePosition(radius, angle);
          return Positioned(
            left: radius - position.dx,
            top: radius + position.dy,
            child: Transform.rotate(
              angle: pi / 180,
              child: SvgPicture.asset(
                svgList[index],
              ),
            ),
          );
        }),
      ),
    );
  }

  Offset calculatePosition(double radius, double angle) {
    final radians = angle * pi / 180;
    return Offset(
      radius * cos(radians),
      radius * sin(radians),
    );
  }
}
