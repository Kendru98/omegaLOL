import 'package:flutter/material.dart';
import 'package:omega_lul/models/participant.dart';
import 'package:omega_lul/widgets/team_item.dart';

class TeamList extends StatelessWidget {
  const TeamList({
    Key? key,
    required this.partList,
  }) : super(key: key);

  final List<Participant> partList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 120,
                child: ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return TeamItem(
                      currentParticipant: partList[index],
                    );
                  },
                ),
              ),
              const SizedBox(width: 4),
              SizedBox(
                width: 120,
                child: ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return TeamItem(
                      currentParticipant: partList[index + 5],
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
