// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  TextEditingController myController = TextEditingController();

//Greeting Message Method
  String greetingMessage = " ";

//Method
  void greetUser() {
    String userTodo = myController.text;
    setState(() {
      greetingMessage = userTodo;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Greeting Message
            Text(greetingMessage),
            //text filed
            TextField(
              controller: myController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Type todo..."),
            ),
            //Button
            ElevatedButton(onPressed: greetUser, child: Text("Add Todo")),
          ],
        ),
      )),
    );
  }
}
