import 'package:flutter/material.dart';
import 'package:image_search/models/photos.dart';

class PhotoWidget extends StatelessWidget {
  final Photo photo;

  const PhotoWidget({
    super.key,
    required this.photo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16,
        ),
        image: DecorationImage(
          image: NetworkImage(
            photo.previewURL,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
