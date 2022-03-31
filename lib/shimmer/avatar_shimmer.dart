import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

Widget avatarShimmer({required double size}) {
  return Shimmer(
    child: Container(
      color: Colors.grey[300],
      width: size,
      height: size,
    ),
  );
}
