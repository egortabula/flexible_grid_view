import 'package:flutter/material.dart';

class ThreeColumnRowLayout extends StatelessWidget {
  final List<Widget> children;
  final double crossAxisSpacing;
  const ThreeColumnRowLayout({
    Key? key,
    required this.crossAxisSpacing,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: children[0],
        ),
        SizedBox(width: crossAxisSpacing),
        Flexible(
          flex: 1,
          child: children.length < 2 ? const SizedBox.shrink() : children[1],
        ),
        SizedBox(width: crossAxisSpacing),
        Flexible(
          flex: 1,
          child: children.length < 3 ? const SizedBox.shrink() : children[2],
        ),
      ],
    );
  }
}
