import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ViewPhotoPage extends StatelessWidget {
  final String heroTag;
  final String url;
  final bool networkImage;

  const ViewPhotoPage(
      {super.key,
      this.networkImage = true,
      required this.url,
      required this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag,
      child: networkImage
          ? PhotoView(
              imageProvider: NetworkImage(url),
            )
          : PhotoView(
              imageProvider: AssetImage(url),
            ),
    );
  }
}
