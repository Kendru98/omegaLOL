import 'package:flutter/material.dart';
import 'package:omega_lul/provider.dart/matches_provider.dart';
import 'package:omega_lul/utils/data_conversion.dart';
import 'package:omega_lul/utils/my_theme.dart';
import 'package:omega_lul/widgets/search_field.dart';
import 'package:provider/provider.dart';

class PickServer extends StatelessWidget {
  const PickServer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<MatchesProvider>(
      builder: (context, provider, child) {
        return PopupMenuButton(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          icon: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Image(
                color: Colors.black,
                image: AssetImage('icons/choose_server.png'),
              ),
              Text(
                provider.currentServer.enumToString(),
                style: MyTheme.dmSans14w400,
              ),
            ],
          ),
          itemBuilder: (context) => Servers.values
              .map(
                (server) => PopupMenuItem(
                  value: server,
                  child:
                      Text(server.enumToString(), style: MyTheme.dmSans14w400),
                ),
              )
              .toList(),
          onSelected: (Servers server) {
            provider.setServer(server);
          },
        );
      },
    );
  }
}
