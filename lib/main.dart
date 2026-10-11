import 'package:flutter/material.dart';
import 'package:todo_app_assignment/components/task_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.blue),
        brightness: .light,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Theme.of(context).secondaryHeaderColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Icon(Icons.arrow_back), Icon(Icons.more_vert_outlined)],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My Task",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              SizedBox(height: 20,),
              TaskCard()
            ],
          ),
        ),
      ),
    );
  }
}

