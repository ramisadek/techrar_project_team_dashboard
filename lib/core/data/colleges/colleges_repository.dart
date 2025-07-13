import 'package:techrar_project_team_dashboard/core/core/network/models/response_model.dart';
import 'package:techrar_project_team_dashboard/core/models/colleges/colleges_model.dart';

abstract class CollegesRepository{
  Future<ResponseModel<List<CollegesModel>>> getCollegesList();
}