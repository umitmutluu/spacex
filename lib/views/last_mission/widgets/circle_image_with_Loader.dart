import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CircleImageWithLoader extends ClipRRect {
  final String? image;

  final double radius;

  CircleImageWithLoader({
    super.key,
    required this.radius,
    this.image,
  }) : super(
            borderRadius: BorderRadius.circular(radius),
            child: CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.2),
              radius: radius * .55,
              backgroundImage: CachedNetworkImageProvider(
                image!,
              ),
              foregroundImage: NetworkImage(image),
            ));
}
