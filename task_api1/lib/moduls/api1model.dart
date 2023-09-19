class ApiModel {
  final int userId;
  final int id;
  final String title;

  ApiModel({required this.userId, required this.id, required this.title});

  factory ApiModel.fromjson(Map<String, dynamic> json) {
    return ApiModel(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}
