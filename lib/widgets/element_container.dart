import 'package:flutter/material.dart';
import 'package:omega_lul/utils/my_colors.dart';

class ElementContainer extends StatelessWidget {
  const ElementContainer({
    Key? key,
    this.child,
    this.topPadding = 0,
    this.topRadius = 0,
  }) : super(key: key);
  final Widget? child;
  final double topPadding;
  final double topRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 16,
        top: 16,
      ),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: MyColors.mainContainers),
      child: child,
    );
  }
}
