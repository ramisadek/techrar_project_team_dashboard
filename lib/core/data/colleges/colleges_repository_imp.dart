import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:techrar_project_team_dashboard/core/core/network/models/response_model.dart';
import 'package:techrar_project_team_dashboard/core/models/colleges/colleges_model.dart';
import 'package:techrar_project_team_dashboard/core/remote/colleges/colleges_remote_data_source.dart';
import 'package:techrar_project_team_dashboard/core/remote/colleges/colleges_remote_data_source_imp.dart';
import 'package:techrar_project_team_dashboard/core/remote/colleges/mappers/colleges_network_list_mapper.dart';

import 'colleges_repository.dart';

part 'colleges_repository_imp.g.dart';

@riverpod
CollegesRepository collegesRepository(Ref ref) {
  final remoteDataSource = ref.read(collegesRemoteDataSourceProvider);

  return _CollegesRepositoryImp(remoteDataSource: remoteDataSource);
}

class _CollegesRepositoryImp implements CollegesRepository {
  final CollegesRemoteDataSource _remoteDataSource;

  _CollegesRepositoryImp({required CollegesRemoteDataSource remoteDataSource}) : _remoteDataSource = remoteDataSource;
  @override
  Future<ResponseModel<List<CollegesModel>>> getCollegesList() async {
    final response = await _remoteDataSource.getColleges();
    final modelList = CollegesNetworkListMapper.convertNetworkList(response.data);

    return ResponseModel(data: modelList, errorMsg: response.errorMsg);
  }
}
