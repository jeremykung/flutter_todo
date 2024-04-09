import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  String greetingMessage = "";
  TextEditingController myController = TextEditingController();

  void greetUser() {
    setState(() {
      String username = myController.text;
      greetingMessage = "Hello $username";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Message
              Text(greetingMessage),
              // Input
              TextField(
                controller: myController,
                decoration: const InputDecoration(
                  alignLabelWithHint: true,
                  hintText: "Type something",
                ),
              ),
              // Button
              ElevatedButton(
                onPressed: greetUser,
                child: Text('Hi'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
