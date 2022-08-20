import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:omega_lul/models/participant.dart';
import 'package:omega_lul/utils/my_theme.dart';

class TeamList extends StatelessWidget {
  const TeamList({Key? key, required this.partList}) : super(key: key);

  final List<Participant> partList;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 100,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      CachedNetworkImage(
                        width: 16,
                        height: 16,
                        imageUrl:
                            'http://ddragon.leagueoflegends.com/cdn/12.15.1/img/champion/${partList[index].championName}.png',
                      ),
                      const SizedBox(width: 4),
                      SizedBox(
                        width: 80,
                        child: Text(
                          partList[index].summonerName,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: MyTheme.textKDAGrey,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(width: 4),
            SizedBox(
              width: 100,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          CachedNetworkImage(
                            width: 16,
                            height: 16,
                            imageUrl:
                                'http://ddragon.leagueoflegends.com/cdn/12.15.1/img/champion/${(partList[index + 5].championName) == 'FiddleSticks' ? 'Fiddlesticks' : partList[index + 5].championName}.png',
                          ),
                          const SizedBox(width: 4),
                          SizedBox(
                            width: 80,
                            child: Text(
                              partList[index + 5].summonerName,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: MyTheme.textKDAGrey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
