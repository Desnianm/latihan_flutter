import 'package:get/get.dart';
import '../models/football_player_model.dart';

class FootballPlayerController extends GetxController {
  var players = <FootballPlayer>[
    FootballPlayer(
      name: "Rodri",
      position: "Midfielder",
      number: 16,
      imageUrl: "https://media.gettyimages.com/id/2153690241/photo/manchester-england-rodri-of-manchester-city-celebrates-scoring-his-teams-third-goal-during.jpg?s=612x612&w=0&k=20&c=H4akzRv0sqAtvCtLhltGigvu6Nk5K6ozhL3GEFgK9SE=",
    ),
    FootballPlayer(
      name: "Savinho",
      position: "Winger",
      number: 11,
      imageUrl: "https://media.gettyimages.com/id/2220022085/photo/boca-raton-florida-savinho-of-manchester-city-poses-for-a-portrait-during-the-official-fifa.jpg?s=612x612&w=0&k=20&c=3sCf9VUNHZ4lIeSppzThPJ0-u3pZL8F5rqa0xmd89mA=",
    ),
    FootballPlayer(
      name: "Haaland",
      position: "Forward",
      number: 9,
      imageUrl: "https://media.gettyimages.com/id/1655248832/photo/manchester-england-erling-haaland-of-manchester-city-carries-the-matchball-after-scoring-a.jpg?s=612x612&w=0&k=20&c=VCNn_-Zu7A_tOrAY3r4gPgFWNAojUESjHn_UGV0959Y=",
    ),
    FootballPlayer(
      name: "Trafford",
      position: "Goalkeeper",
      number: 1,
      imageUrl: "https://media.gettyimages.com/id/2213176086/photo/burnley-england-james-trafford-of-burnley-looks-on-during-the-warm-up-prior-to-the-sky-bet.jpg?s=612x612&w=0&k=20&c=BRubha9GP_yav0b_t3IuubgvExUd8hbr-VXc8d-1Ocs=",
    ),
    FootballPlayer(
      name: "Foden",
      position: "Midfielder",
      number: 47,
      imageUrl: "https://media.gettyimages.com/id/2136323346/photo/manchester-england-phil-foden-of-manchester-city-celebrates-victory-on-pitch-with-the-match.jpg?s=612x612&w=0&k=20&c=zi_9xeH6YC5igBaDcxzma7NOlbDi3zhjNmkaXh33IX0=",
    ),
  ].obs;

  void updatePlayer(int index, String newName, String newPosition, int newNumber) {
    players[index].name = newName;
    players[index].position = newPosition;
    players[index].number = newNumber;
    players.refresh();
  }
}
