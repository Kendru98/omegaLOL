import 'package:flutter/material.dart';
import 'package:omega_lul/pages/homepage.dart';
import 'package:omega_lul/provider.dart/matches_provider.dart';
import 'package:omega_lul/utils/my_colors.dart';
import 'package:omega_lul/widgets/pick_server.dart';
import 'package:provider/provider.dart';

enum Servers {
  eune,
  euw,
}

class SearchField extends StatefulWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final nicknameController = TextEditingController();
  String currentServer = Servers.eune.name.toUpperCase();

  @override
  void dispose() {
    nicknameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.read<MatchesProvider>();

    return Container(
      width: 600,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: MyColors.white),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: nicknameController,
              onSubmitted: (nickname) async {
                await provider.getPuuid(
                  nickname,
                  provider.currentServer,
                );
                await provider.getMatchesIds();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Summoner name...',
              ),
            ),
          ),
          const SizedBox(
            width: 100,
            child: PickServer(),
          ),
        ],
      ),
    );
  }
}
