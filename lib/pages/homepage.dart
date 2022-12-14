import 'package:flutter/material.dart';
import 'package:omega_lul/models/info.dart';
import 'package:omega_lul/provider.dart/matches_provider.dart';
import 'package:omega_lul/utils/my_colors.dart';
import 'package:omega_lul/utils/my_theme.dart';
import 'package:omega_lul/widgets/background_container.dart';
import 'package:omega_lul/widgets/centered_view.dart';
import 'package:omega_lul/widgets/element_container.dart';
import 'package:omega_lul/widgets/match_data_tile.dart';
import 'package:omega_lul/widgets/top_bar.dart';
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = context.read<MatchesProvider>();
    return Scaffold(
      backgroundColor: MyColors.siteBackground,
      body: BackgroundContainer(
        //singlechildscrollview
        child: Column(
          children: [
            const CenteredView(
              child: TopBar(),
            ),
            CenteredView(
              child: ElementContainer(
                child: Column(
                  children: [
                    Selector<MatchesProvider,
                        Tuple2<List<Info>?, List<String>>>(
                      selector: (_, provider) => Tuple2(
                        provider.getMatchData(),
                        provider.matchesIds,
                      ),
                      builder: (context, matchData, child) {
                        if (matchData.item1 == null) {
                          return const CircularProgressIndicator();
                        }
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: matchData.item2.length,
                          itemBuilder: (context, matchIndex) {
                            return MatchDataTile(
                              matchData: matchData.item1![matchIndex],
                            );
                          },
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
