import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class CenteredView extends StatelessWidget {
  const CenteredView({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          // horizontal: 70, //Platform.isAndroid ? 16 : 70,
          // vertical: 60, //Platform.isAndroid ? 16 : 60,
          ),
      alignment: Alignment.center,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 800),
        child: child,
      ),
    );
  }
}
