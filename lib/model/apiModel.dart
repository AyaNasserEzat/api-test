class apiModel {
  final int userId;
  final int id;
  final String title;
  final String body;
  apiModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory apiModel.fromJson(Map<String, dynamic> jsonData) {
    return apiModel(
        userId: jsonData['userId'],
        id: jsonData['id'],
        title: jsonData['title'],
        body: jsonData['body']);
  }
}