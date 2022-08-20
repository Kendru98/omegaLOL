import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:omega_lul/models/runes/rune.dart';
import 'package:omega_lul/models/runes/rune_main.dart';
import 'package:omega_lul/models/runes/slot.dart';
import 'package:omega_lul/provider.dart/matches_provider.dart';
import 'package:provider/provider.dart';
import 'package:collection/collection.dart';

class DataConversion {
  static Map<int, String> summonerSpells = {
    21: 'SummonerBarrier.png',
    1: 'SummonerBoost.png',
    14: 'SummonerDot.png',
    3: 'SummonerExhaust.png',
    4: 'SummonerFlash.png',
    6: 'SummonerHaste.png',
    7: 'SummonerHeal.png',
    13: 'SummonerMana.png',
    30: 'SummonerPoroRecall.png!',
    31: 'SummonerPoroThrow.png',
    11: 'SummonerSmite.png',
    39: 'SummonerSnowball.png',
    32: 'SummonerSnowURFSnowball_Mark.png',
    12: 'SummonerTeleport.png',
    54: 'Placeholder',
    55: 'Placeholder and Attack-Smite', //todo
  };
  static Map<int, String> runesPaths = {
    21: 'SummonerBarrier.png',
    1: 'SummonerBoost.png',
    14: 'SummonerDot.png',
    3: 'SummonerExhaust.png',
    4: 'SummonerFlash.png',
    6: 'SummonerHaste.png',
    7: 'SummonerHeal.png',
    13: 'SummonerMana.png',
    30: 'SummonerPoroRecall.png!',
    31: 'SummonerPoroThrow.png',
    11: 'SummonerSmite.png',
    39: 'SummonerSnowball.png',
    32: 'SummonerSnowURFSnowball_Mark.png',
    12: 'SummonerTeleport.png',
    54: 'Placeholder',
    55: 'Placeholder and Attack-Smite', //todo
  };

  String readTimestamp(int timestamp) {
    var now = DateTime.now();
    var format = DateFormat('HH:mm a');
    var date = DateTime.fromMillisecondsSinceEpoch(timestamp);
    var diff = now.difference(date);
    var time = '';

    if (diff.inSeconds <= 0 ||
        diff.inSeconds > 0 && diff.inMinutes == 0 ||
        diff.inMinutes > 0 && diff.inHours == 0 ||
        diff.inHours > 0 && diff.inDays == 0) {
      time = format.format(date);
    } else if (diff.inDays > 0 && diff.inDays < 7) {
      if (diff.inDays == 1) {
        time = '${diff.inDays} DAY AGO';
      } else {
        time = '${diff.inDays} DAYS AGO';
      }
    } else {
      if (diff.inDays == 7) {
        time = '${(diff.inDays / 7).floor()} WEEK AGO';
      } else {
        time = '${(diff.inDays / 7).floor()} WEEKS AGO';
      }
    }

    return time;
  }

  static String choosePath(int mainIconId, int iconId, BuildContext context) {
    final provider = context.read<MatchesProvider>();

    try {
      List<RuneMain> runesList = provider.runesInfo;
      String iconPath = '';

      //w runes tylko za 1 razem 4 potem 3

      RuneMain? test =
          runesList.firstWhereOrNull((element) => element.id == mainIconId);

      if (test != null) {
        for (Slot currentSlot in test.slots) {
          Rune? mainIcon = currentSlot.runes.firstWhereOrNull(
            (element) => element.id == iconId,
          );
          if (mainIcon != null) {
            iconPath = mainIcon.icon;
          }
        }
      }

      //print(iconPath);
      return iconPath;
    } catch (e) {
      print(e);
    }
//8008
    return '';
  }

  static String choosePathSecond(int iconId, BuildContext context) {
    final provider = context.read<MatchesProvider>();

    try {
      List<RuneMain> runesList = provider.runesInfo;
      String iconPath = '';

      //w runes tylko za 1 razem 4 potem 3

      RuneMain? test =
          runesList.firstWhereOrNull((element) => element.id == iconId);

      if (test != null) {
        iconPath = test.icon;
      }

      return iconPath;
    } catch (e) {
      print(e);
    }

    return '';
  }
}
