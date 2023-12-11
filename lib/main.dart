import 'package:emierstieapp/screens/esescreen.dart';
import 'package:emierstieapp/screens/todosscreen.dart';
import 'package:emierstieapp/screens/wiescreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EMI Erstie App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Erstie App"),
            actions: [
              IconButton(
                onPressed: () {}, 
                icon: const Icon(Icons.settings)
              )
            ],
            bottom: const TabBar(
              tabs: [
                Tab(
                  //icon: Icon(Icons.list_rounded),
                  text: "ToDo's",
                ),
                Tab(
                  //icon: Icon(Icons.people_alt_rounded),
                  text: "ESE",
                ),
                Tab(
                  //icon: Icon(Icons.question_answer),
                  text: "Wie?",
                ),
              ]
            ),
          ),
          body: const TabBarView(
            children: [
              ToDosScreen(),
              ESEScreen(),
              WieScreen()
            ]
          ),
        ),
      ),
    );
  }
}
