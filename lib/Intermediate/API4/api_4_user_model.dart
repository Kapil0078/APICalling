class API4UserModel {
  final int id;
  final int userId;
  final String title;
  final bool completed;

  API4UserModel({
    required this.id,
    required this.userId,
    required this.title,
    required this.completed,
  });

  factory API4UserModel.fromJson(Map<String, dynamic> json) => API4UserModel(
        id: json['id'],
        userId: json["userId"],
        title: json["title"],
        completed: json["completed"],
      );
}


/*
{
  "userId": 1,
  "id": 1,
  "title": "delectus aut autem",
  "completed": false
}
*/
