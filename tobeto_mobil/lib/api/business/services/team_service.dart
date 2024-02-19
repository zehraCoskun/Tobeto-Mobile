import 'package:tobeto_mobil/api/repository/team_repository.dart';
import 'package:tobeto_mobil/models/firebase_models/team_model.dart';

class TeamService {
  final TeamRepository _teamRepository;
  const TeamService(this._teamRepository);


    Future<List<TeamModel>> getAllTeam() async {
    final quertSnapshot = await _teamRepository.getAllTeam();
    final List<TeamModel> teamList = [];

    for (var teamDoc in quertSnapshot.docs) {
      if (teamDoc.exists) {
        final teamData = teamDoc.data();
        teamList.add(TeamModel.fromMap(teamData));
      }
    }
    return teamList;
  }
}
