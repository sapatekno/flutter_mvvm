import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

Widget avatarShimmer({required double size}) {
  return Shimmer(
    child: CircleAvatar(
      radius: size,
      backgroundColor: Colors.grey[300],
    ),
  );
}
