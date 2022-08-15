import 'package:flutter/material.dart';
import 'package:omega_lul/utils/my_colors.dart';
import 'package:omega_lul/utils/my_theme.dart';
import 'package:omega_lul/widgets/background_container.dart';
import 'package:omega_lul/widgets/element_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.siteBackground,
      body: BackgroundContainer(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElementContainer(
                  child: Column(
                    children: [
                      Text(
                        'Chemp Stats',
                        style: MyTheme.textCairo64,
                      ),
                      Text(
                        'Darius',
                        style: MyTheme.textdmSans46w400,
                      ),
                      Text(
                        'Ashe',
                        style: MyTheme.textdmSans46w400,
                      ),
                      Text(
                        'Leona',
                        style: MyTheme.textdmSans46w400,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'OmegaLOL',
                      style: MyTheme.textPoppins46w500,
                    ),
                    const SizedBox(
                      width: 200, //?
                    ),
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
                    const SizedBox(
                      width: 200, //?
                    ),
                    const Icon(
                      Icons.abc_sharp,
                      size: 40,
                      color: Colors.white,
                    ),
                    const Icon(
                      Icons.abc_sharp,
                      size: 40,
                      color: Colors.white,
                    ),
                    const Icon(
                      Icons.abc_sharp,
                      size: 40,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
            ElementContainer(
              child: Column(
                children: [
                  Text(
                    'data',
                    style: MyTheme.textPoppins46w700,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
