// ignore_for_file: prefer_typing_uninitialized_variables
// script by Hovered Cube
// This is the source code of HoveredCube video:
// "How to create frostedGlass in flutter"
// Tutorial Video link :
// - https://github.com/HoveredCube/frostedglass_video1
// Follow @HoveredCube on instagram.

import 'package:flutter/material.dart';
import 'dart:ui';

class FrostedGlassBoxBg extends StatelessWidget {
  const FrostedGlassBoxBg({
    Key? key,
    required this.theWidth,
    required this.theHeight,
    required this.theChild,
  }) : super(key: key);

  final double theWidth;
  final double theHeight;
  final Widget theChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: theWidth,
      height: theHeight,
      color: Colors.transparent,
      child: Stack(
        children: [
          // Blur effect
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 0.0,
              sigmaY: 0.0,
            ),
            child: Container(),
          ),
          // Gradient effect
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white.withOpacity(0.13)),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white.withOpacity(0.15),
                  Colors.white.withOpacity(0.05),
                ],
              ),
            ),
          ),
          // Child
          Center(child: theChild),
        ],
      ),
    );
  }
}
