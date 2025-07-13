import 'package:techrar_project_team_dashboard/core/core/network/models/response_model.dart';

import 'models/colleges_network_model.dart';

abstract class CollegesRemoteDataSource{
  Future<ResponseModel<CollegesListNetworkModel>> getColleges();
}