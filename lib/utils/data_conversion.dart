import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:omega_lul/utils/my_theme.dart';
import 'package:omega_lul/widgets/search_field.dart';

extension ChooseColor on double {
  TextStyle kdaColor() {
    if (this < 2.50) {
      return MyTheme.textKDAGrey;
    } else if (this > 2.50 && this < 5.00) {
      return MyTheme.textKDAGrey.copyWith(
        color: const Color.fromARGB(255, 41, 168, 45),
      );
    } else {
      return MyTheme.textKDAGrey.copyWith(
        color: const Color.fromARGB(255, 250, 227, 16),
      );
    }
  }
}

extension ChempName on String {
  String chempPath() {
    return 'icons/champion/$this.png';
  }
}

extension EnumToString on Servers {
  String enumToString() {
    late String serverName;
    this == Servers.eun1
        ? serverName = 'EUNE'
        : this == Servers.euw1
            ? serverName = 'EUW'
            : this == Servers.br1
                ? serverName = 'BR'
                : this == Servers.jp1
                    ? serverName = 'JP'
                    : this == Servers.kr
                        ? serverName = 'KR'
                        : this == Servers.la1
                            ? serverName = 'LAS'
                            : this == Servers.la2
                                ? serverName = 'LAN'
                                : this == Servers.na1
                                    ? serverName = 'NA'
                                    : this == Servers.oc1
                                        ? serverName = 'OC'
                                        : this == Servers.ru
                                            ? serverName = 'RU'
                                            : this == Servers.tr1
                                                ? serverName = 'TR'
                                                : '';
    return serverName;

    //return serverName;
  }
}

extension ElapsedTime on int {
  String timeLabel() {
    var now = DateTime.now();
    var format = DateFormat('HH:mm a');
    var date = DateTime.fromMillisecondsSinceEpoch(this);
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
}

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
    55: 'Placeholder and Attack-Smite',
  };
  static Map<int, String> runesPaths = {
    8100: '7200_Domination.png',
    8300: '7203_Whimsy.png',
    8000: '7201_Precision.png',
    8400: '7204_Resolve.png',
    8200: '7202_Sorcery.png',
    8112: 'Electrocute.png',
    8124: 'Predator.png',
    8128: 'DarkHarvest.png',
    9923: 'HailOfBlades.png',
    8351: 'GlacialAugment.png',
    8360: 'UnsealedSpellbook.png',
    8369: 'FirstStrike.png',
    8005: 'PressTheAttack.png',
    8008: 'LethalTempoTemp.png',
    8021: 'FleetFootwork.png',
    8010: 'Conqueror.png',
    8437: 'GraspOfTheUndying.png',
    8439: 'VeteranAftershock.png',
    8465: 'Guardian.png',
    8214: 'SummonAery.png',
    8229: 'ArcaneComet.png',
    8230: 'PhaseRush.png', //Slots
    8126: 'CheapShot.png',
    8139: 'GreenTerror_TasteOfBlood.png',
    8143: 'SuddenImpact.png',
    8136: 'ZombieWard.png',
    8120: 'GhostPoro.png',
    8138: 'EyeballCollection.png',
    8135: 'TreasureHunter.png',
    8134: 'IngeniousHunter.png',
    8105: 'RelentlessHunter.png',
    8106: 'UltimateHunter.png',
    8306: 'HextechFlashtraption.png',
    8304: 'MagicalFootwear.png',
    8313: 'PerfectTiming.png',
    8321: 'FuturesMarket.png',
    8316: 'MinionDematerializer.png',
    8345: 'BiscuitDelivery.png',
    8347: 'CosmicInsight.png',
    8410: 'ApproachVelocity.png',
    8352: 'TimeWarpTonic.png',
    9101: 'Overheal.png',
    9111: 'Triumph.png',
    8009: 'PresenceOfMind.png',
    9104: 'LegendAlacrity.png',
    9105: 'LegendTenacity.png',
    9103: 'LegendBloodline.png',
    8014: 'CoupDeGrace.png',
    8017: 'CutDown.png',
    8299: 'LastStand.png',
    8446: 'Demolish.png',
    8463: 'FontOfLife.png',
    8401: 'MirrorShell.png',
    8429: 'Conditioning.png',
    8444: 'SecondWind.png',
    8473: 'BonePlating.png',
    8451: 'Overgrowth.png',
    8453: 'Revitalize.png',
    8242: 'Unflinching.png',
    8224: 'Pokeshield.png',
    8226: 'ManaflowBand.png',
    8275: '6361.png',
    8210: 'Transcendence.png',
    8234: 'CelerityTemp.png',
    8233: 'AbsoluteFocus.png',
    8237: 'Scorch.png',
    8232: 'Waterwalking.png',
    8236: 'GatheringStorm.png',
  };
}
//   static String choosePath(int mainIconId, int iconId, BuildContext context) {
//     final provider = context.read<MatchesProvider>();

//     try {
//       List<RuneMain> runesList = provider.runesInfo;
//       String iconPath = '';

//       RuneMain? test =
//           runesList.firstWhereOrNull((element) => element.id == mainIconId);

//       if (test != null) {
//         for (Slot currentSlot in test.slots) {
//           Rune? mainIcon = currentSlot.runes.firstWhereOrNull(
//             (element) => element.id == iconId,
//           );
//           if (mainIcon != null) {
//             iconPath = mainIcon.icon;
//           }
//         }
//       }
//       print(iconPath);
//       return iconPath.runePath();
//     } catch (e) {
//       print(e);
//     }
//     return '';
//   }

//   static String choosePathSecond(int iconId, BuildContext context) {
//     final provider = context.read<MatchesProvider>();

//     try {
//       List<RuneMain> runesList = provider.runesInfo;
//       String iconPath = '';
//       RuneMain? test =
//           runesList.firstWhereOrNull((element) => element.id == iconId);

//       if (test != null) {
//         iconPath = test.icon;
//       }
//       print(iconPath);
//       return iconPath;
//     } catch (e) {
//       print(e);
//     }

//     return '';
//   }
// }
