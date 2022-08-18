import 'package:flutter/material.dart';
import 'package:omega_lul/utils/my_theme.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _TopBarItem(title: 'Stats'),
          Icon(
            Icons.abc_sharp,
            size: 40,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class _TopBarItem extends StatelessWidget {
  final String title;

  const _TopBarItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: MyTheme.textPoppins46w500,
    );
  }
}
