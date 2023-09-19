class Api2Model {
  final int userId;
  final int id;
  final String title;
  final String body;

  Api2Model(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  factory Api2Model.fromjson(Map<String, dynamic> json) {
    return Api2Model(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
