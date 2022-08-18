import 'package:flutter/material.dart';
import 'package:omega_lul/utils/my_colors.dart';
import 'package:omega_lul/widgets/background_container.dart';
import 'package:omega_lul/widgets/search_field.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.siteBackground,
      body: BackgroundContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SearchField(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
