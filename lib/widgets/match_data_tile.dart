import 'package:flutter/material.dart';
import 'package:omega_lul/models/info.dart';
import 'package:omega_lul/utils/my_theme.dart';

class MatchDataTile extends StatelessWidget {
  const MatchDataTile({
    Key? key,
    required this.matchData,
  }) : super(key: key);

  final Info matchData;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(matchData.gameMode, style: MyTheme.textTitle16w700),
            Text(
                ('${Duration(minutes: matchData.gameDuration).toString().substring(0, 7)}m'),
                style: MyTheme.textTitle16w700),
          ],
        )
      ],
    );
  }
}
