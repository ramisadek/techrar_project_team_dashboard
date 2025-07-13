import 'package:techrar_project_team_dashboard/core/models/colleges/colleges_model.dart';
import 'package:techrar_project_team_dashboard/core/remote/colleges/models/colleges_network_model.dart';

class CollegesNetworkListMapper {
  static List<CollegesModel> convertNetworkList(CollegesListNetworkModel networkList) {
    List<CollegesModel> collegesModelList = [];

    for (var networkModel in networkList.collegesList) {
      collegesModelList.add(_convert(networkModel));
    }

    return collegesModelList;
  }

  static CollegesModel _convert(CollegesNetworkModel input) {
    return CollegesModel(avatarUrl: input.avatarUrl, isOnline: input.isOnline, name: input.name, role: input.role);
  }
}
