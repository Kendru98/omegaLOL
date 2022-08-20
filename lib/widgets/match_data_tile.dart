import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:omega_lul/models/info.dart';
import 'package:omega_lul/models/participant.dart';
import 'package:omega_lul/provider.dart/matches_provider.dart';
import 'package:omega_lul/utils/data_conversion.dart';
import 'package:omega_lul/utils/my_colors.dart';
import 'package:omega_lul/utils/my_theme.dart';
import 'package:provider/provider.dart';

class MatchDataTile extends StatelessWidget {
  const MatchDataTile({
    Key? key,
    required this.matchData,
  }) : super(key: key);

  final Info matchData;

  @override
  Widget build(BuildContext context) {
    final dataConv = DataConversion();
    final provider = context.read<MatchesProvider>();
    int userIndex = matchData.participants
        .indexWhere((element) => element.puuid == provider.userPuuid);
    Participant currentPart = matchData.participants[userIndex];

    print(
      'https://ddragon.canisback.com/img/${DataConversion.choosePath(currentPart.perks.styles[1].style, currentPart.perks.styles[1].selections[1].perk, context)}',
    );
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                matchData.queueId.queueTranslation(),
                style: MyTheme.textTitle16w700,
              ),
              currentPart.win
                  ? Text(
                      'WIN',
                      style: MyTheme.textTitle16w600G,
                    )
                  : Text(
                      'LOST',
                      style: MyTheme.textTitle16w600R,
                    ),
              Text(
                ('${Duration(minutes: matchData.gameDuration).toString().substring(0, 5)}m'),
                style: MyTheme.textTitle16w400,
              ),
              Text(
                dataConv.readTimestamp(matchData.gameEndTimestamp),
                style: MyTheme.textTitle16w400,
              )
            ],
          ),
        ),
        const SizedBox(width: 10),
        Column(
          children: [
            Row(
              children: [
                Image(
                  width: 24,
                  height: 24,
                  image: AssetImage(
                      'icons/spell/${DataConversion.summonerSpells[currentPart.summoner1Id]}'),
                ),
                Image(
                  width: 24,
                  height: 24,
                  image: AssetImage(
                      'icons/spell/${DataConversion.summonerSpells[currentPart.summoner2Id]}'),
                ),
              ],
            ),
            Row(
              children: [
                CachedNetworkImage(
                  width: 48,
                  height: 48,
                  imageUrl:
                      'http://ddragon.leagueoflegends.com/cdn/12.15.1/img/champion/${currentPart.championName}.png',
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    color: Color.fromRGBO(61, 61, 82, 1),
                  ),
                  child: CachedNetworkImage(
                    width: 24,
                    height: 24,
                    fit: BoxFit.cover,
                    imageUrl:
                        'https://ddragon.canisback.com/img/${DataConversion.choosePath(currentPart.perks.styles[0].style, currentPart.perks.styles[0].selections[0].perk, context)}',
                  ),
                ),
                const SizedBox(width: 2),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    color: Color.fromRGBO(61, 61, 82, 1),
                  ),
                  child: CachedNetworkImage(
                    width: 24,
                    height: 24,
                    fit: BoxFit.cover,
                    imageUrl:
                        'https://ddragon.canisback.com/img/${DataConversion.choosePathSecond(currentPart.perks.styles[1].style, context)}',
                  ),
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Text(
              '${currentPart.kills} / ${currentPart.deaths} / ${currentPart.assists}',
              style: MyTheme.textTitle16w600G,
            ),
            Text(
              '${((currentPart.kills + currentPart.assists) / currentPart.deaths).toStringAsPrecision(2)} KDA',
              style: MyTheme.textTitle16w600R,
            )
          ],
        )
      ],
    );
  }
}
// P/Kill 46%
// Control Ward 3
// CS 128 (3.8)
// Gold 3