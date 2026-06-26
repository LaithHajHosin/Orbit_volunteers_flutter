
import '../../../core/network/dio_client.dart';
import '../models/projectModel.dart';

class HomeRemoteDataSource {

  final DioClient dioClient;

  HomeRemoteDataSource(
      this.dioClient,
      );

  Future<List<ProjectModel>> getProjects() async {

    print("Before Request");

    final response =
    await dioClient.get("/projects");

    print("After Request");

    print(response.statusMessage);



    final List projects =
    response.data['data'];

    return projects
        .map(
          (e) =>
          ProjectModel.fromJson(e),
    )
        .toList();
  }
}