import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomCachedImageWidget extends StatelessWidget {
  const CustomCachedImageWidget({
    Key? key,
    this.imageUrl,
  }) : super(key: key);

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null || imageUrl?.isEmpty == true) {
      return const Icon(Icons.error);
    }
    return CachedNetworkImage(
      imageUrl: imageUrl!,
      fit: BoxFit.fill,
      placeholder: (_, __) => const Center(child: CircularProgressIndicator()),
      errorWidget: (_, __, ___) => const Icon(Icons.error),
      fadeInDuration: const Duration(seconds: 2),
    );
  }
}
