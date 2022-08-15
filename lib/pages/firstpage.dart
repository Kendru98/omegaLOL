import 'package:flutter/material.dart';
import 'package:omega_lul/utils/my_colors.dart';
import 'package:omega_lul/widgets/background_container.dart';

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
              children: [
                Container(
                  width: 300,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    onSubmitted: ((value) {}),
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      fillColor: MyColors.textFieldFill,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Search here',
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
