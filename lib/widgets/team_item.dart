import 'package:flutter/material.dart';
import 'package:omega_lul/models/participant.dart';
import 'package:omega_lul/provider.dart/matches_provider.dart';
import 'package:omega_lul/utils/data_conversion.dart';
import 'package:omega_lul/utils/my_theme.dart';
import 'package:provider/provider.dart';

class TeamItem extends StatelessWidget {
  const TeamItem({
    Key? key,
    required this.currentParticipant,
  }) : super(key: key);
  final Participant currentParticipant;

  @override
  Widget build(BuildContext context) {
    final provider = context.read<MatchesProvider>();
    return Row(
      children: [
        Image(
          width: 16,
          height: 16,
          image: AssetImage(
            currentParticipant.championName.chempPath(),
          ),
        ),
        const SizedBox(width: 4),
        SizedBox(
          width: 100,
          child: Text(
            currentParticipant.summonerName.replaceAll("", "\u{200B}"),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: provider.userPuuid != currentParticipant.puuid
                ? MyTheme.textKDAGrey
                : MyTheme.textKDAGrey.copyWith(
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 131, 131, 144),
                  ),
          ),
        ),
      ],
    );
  }
}
