// ignore_for_file: prefer_typing_uninitialized_variables
// script by Hovered Cube
// This is the source code of HoveredCube video:
// "How to create frostedGlass in flutter"
// Tutorial Video link :
// - https://github.com/HoveredCube/frostedglass_video1
// Follow @HoveredCube on instagram.

import 'package:flutter/material.dart';
import 'dart:ui';

class FrostedGlassBox extends StatelessWidget {
  const FrostedGlassBox({
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
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: theWidth,
        height: theHeight,
        color: Colors.transparent,
        child: Stack(
          children: [
            // Dark border at top-left corner
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: 10,
                height: 10,
                color: Colors.black.withOpacity(0.9),
              ),
            ),
            // Blur effect
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
              child: Container(),
            ),
            // Gradient effect
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black.withOpacity(0.23)),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(0.43),
                    Colors.black.withOpacity(0.35),
                  ],
                ),
              ),
            ),
            // Child
            Center(child: theChild),
          ],
        ),
      ),
    );
  }
}
