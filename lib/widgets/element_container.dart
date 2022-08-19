import 'package:flutter/material.dart';
import 'package:omega_lul/utils/my_colors.dart';

class ElementContainer extends StatelessWidget {
  const ElementContainer({
    Key? key,
    this.child,
    this.padding = 0,
  }) : super(key: key);
  final Widget? child;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: EdgeInsets.all(padding),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: MyColors.mainContainers),
      child: child,
    );
  }
}
