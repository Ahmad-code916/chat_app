import 'package:flutter/material.dart';

class SvgPictureWidget extends StatelessWidget {
  const SvgPictureWidget(
      {super.key, required this.svgPicture, required this.color});

  final Widget svgPicture;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: color), shape: BoxShape.circle),
      child: svgPicture,
    );
  }
}
