/*
  {
    "userId": 1,
    "id": 1,
    "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
    "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
  },
*/

class API5Model {
  final int id;
  final int userId;
  final String title;
  final String body;

  API5Model({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });

  factory API5Model.fromJson(Map<String, dynamic> json) {
    return API5Model(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
      body: json["body"],
    );
  }
}
