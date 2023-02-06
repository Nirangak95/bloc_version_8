import 'package:equatable/equatable.dart';

class Todo extends Equatable {
  final String id;
  final String task;
  final String description;
  bool? isCompleted;
  bool? isCancelled;

  Todo(
      {required this.id,
      required this.task,
      required this.description,
      this.isCompleted,
      this.isCancelled});

  Todo copyWith({
    String? id,
    String? task,
    String? description,
    bool? isCompleted,
    bool? isCancelled,
  }) {
    return Todo(
        id: id ?? this.id,
        task: task ?? this.task,
        description: description ?? this.description);
  }

  @override
  List<Object?> get props => [
        id,
        task,
        description,
        isCancelled,
        isCompleted,
      ];

  // static List<Todo> todos = [
  //   Todo(id: '1', task: 'sample todo 1', description: 'test description 1'),
  //   // Todo(id: '2', task: 'sample todo 2', description: 'test description 2'),
  // ];
}
