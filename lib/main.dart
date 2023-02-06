import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/todos/todos_bloc.dart';
import 'models/todos_filter_model.dart';
import 'models/todos_model.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: ((context) => TodosBloc()
            ..add(
              LoadTodos(todos: [
                Todo(
                  id: '1',
                  task: 'sample todo 1',
                  description: 'test description 1',
                ),
                Todo(
                  id: '2',
                  task: 'sample todo 2',
                  description: 'test description 2',
                ),
              ]),
            )),
        ),
      ],
      child: MaterialApp(
        title: 'Bloc Pattern 8 todo-s',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            primaryColor: Color(0xFF000A1F),
            appBarTheme: AppBarTheme(color: Color(0xFF000A1F))),
        home: const HomeScreen(),
      ),
    );
  }
}
