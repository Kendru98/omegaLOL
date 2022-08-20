import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:omega_lul/models/info.dart';
import 'package:omega_lul/models/participant.dart';
import 'package:omega_lul/provider.dart/matches_provider.dart';
import 'package:omega_lul/utils/data_conversion.dart';
import 'package:omega_lul/utils/my_theme.dart';
import 'package:omega_lul/widgets/team_list.dart';
import 'package:provider/provider.dart';

class MatchDataTile extends StatelessWidget {
  const MatchDataTile({
    Key? key,
    required this.matchData,
  }) : super(key: key);

  final Info matchData;

  @override
  Widget build(BuildContext context) {
    final provider = context.read<MatchesProvider>();
    int userIndex = matchData.participants
        .indexWhere((element) => element.puuid == provider.userPuuid);
    Participant currentPart = matchData.participants[userIndex];
    Duration matchTime = Duration(minutes: matchData.gameDuration);

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
                ('${matchTime.toString().substring(0, 5)}m'),
                style: MyTheme.textTitle16w400,
              ),
              Text(
                matchData.gameEndTimestamp.timeLabel(),
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
                    fit: BoxFit.fill,
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
                    fit: BoxFit.fill,
                    imageUrl:
                        'https://ddragon.canisback.com/img/${DataConversion.choosePathSecond(currentPart.perks.styles[1].style, context)}',
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          width: 130,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                child: RichText(
                    text: TextSpan(
                  children: [
                    TextSpan(
                      text: '${currentPart.kills}',
                      style: MyTheme.textTitle16w600G,
                    ),
                    TextSpan(text: '/', style: MyTheme.textTitle16w600W),
                    TextSpan(
                      text: '${currentPart.deaths}',
                      style: MyTheme.textTitle16w600R,
                    ),
                    TextSpan(text: '/', style: MyTheme.textTitle16w600W),
                    TextSpan(
                      text: '${currentPart.assists}',
                      style: MyTheme.textTitle16w600Y,
                    ),
                  ],
                )),
              ),
              SizedBox(
                child: Text(
                  '${((currentPart.kills + currentPart.assists) / currentPart.deaths).toStringAsPrecision(3)} KDA',
                  style: ((currentPart.kills + currentPart.assists) /
                          currentPart.deaths)
                      .kdaColor(),
                ),
              )
            ],
          ),
        ),
        Column(
          children: [
            Text(
              'CS: ${currentPart.totalMinionsKilled} (${(currentPart.totalMinionsKilled / matchTime.inHours).toStringAsPrecision(2)})',
              style: MyTheme.textTitle16w400,
            ),
            if (matchData.queueId.queueTranslation() != 'ARAM')
              Text(
                'Vision: ${currentPart.visionScore}',
                style: MyTheme.textTitle16w400,
              ),
            Text(
              '${(((currentPart.kills + currentPart.assists) / matchData.teams[matchData.teams.indexWhere((element) => element.teamId == currentPart.teamId)].objectives.champion.kills) * 100).toStringAsPrecision(3)}% K.P',
              style: MyTheme.textTitle16w400,
            ),
          ],
        ),
        const SizedBox(width: 30),
        TeamList(partList: matchData.participants),
      ],
    );
  }
}
