class ProjectModel {
  final int id;
  final String title;
  final String description;
  final String status;

  ProjectModel({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
  });

  factory ProjectModel.fromJson(
      Map<String, dynamic> json,
      ) {
    return ProjectModel(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      description:
      json['description1'] ?? '',
      status: json['status'] ?? '',
    );
  }
}