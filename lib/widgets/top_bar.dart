import 'package:flutter/material.dart';
import 'package:omega_lul/utils/my_theme.dart';
import 'package:omega_lul/widgets/search_field.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _TopBarItem(title: 'Stats'),
          SearchField(),
        ],
      ),
    );
  }
}

class _TopBarItem extends StatelessWidget {
  final String title;

  const _TopBarItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: MyTheme.textCairo64,
    );
  }
}
