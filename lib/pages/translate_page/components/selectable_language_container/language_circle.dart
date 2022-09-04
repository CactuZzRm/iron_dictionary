import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CircleLanguage extends StatelessWidget {
  final String assetRoute;

  CircleLanguage({required this.assetRoute});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(35)),
      //child: SvgPicture.asset('assets/$assetRoute'),
      child: Image.asset(assetRoute),
    );
  }
}
