import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:sapatekno_mvvm/shimmer/avatar_shimmer.dart';

Widget avatarWidget({required String imageUrl, required double size}) {
  return CachedNetworkImage(
    imageUrl: imageUrl,
    width: size,
    height: size,
    placeholder: (context, url) => avatarShimmer(size: size),
    errorWidget: (context, url, error) =>
        CircleAvatar(
          radius: size,
          backgroundImage: const Svg('assets/images/blank_avatar.svg'),
        ),
    imageBuilder: (context, imageProvider) =>
        CircleAvatar(
          radius: size,
          backgroundImage: imageProvider,
        ),
  );
}
