import 'package:flutter/material.dart';

class SvgPictureWidget extends StatelessWidget {
  const SvgPictureWidget({super.key, required this.svgPicture});

  final Widget svgPicture;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white), shape: BoxShape.circle),
      child: svgPicture,
    );
  }
}
