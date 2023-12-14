import 'dart:convert';

import 'package:http/http.dart' as http; // 라이브러리 별명


main() async {
  final data = await getTodo(1);

  print(data.title);
}







Future<Todo> getTodo(int id) async {
  final data = await http
      .get(Uri.parse("https://jsonplaceholder.typicode.com/todos/$id"));

  return Todo.fromMap(jsonDecode(data.body));
}


class Todo {
  int userId, id;
  String title;
  bool completed;

  Todo({
    required this.userId,
    required this.title,
    required this.completed,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return {
      'userId': this.userId,
      'title': this.title,
      'completed': this.completed,
      'id': this.id,
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      userId: map['userId'] as int,
      title: map['title'] as String,
      completed: map['completed'] as bool,
      id: map['id'] as int,
    );
  }
}
