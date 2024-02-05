// Group Members:
// Hamza Faheem (20K-1884)
// Okasha Arshad (20K-1868)
// Syed Najeeb Ahmed (20K-1871)
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoList(), 
    );
  }
}

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<String> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To-Do List', style: TextStyle(color: const Color.fromARGB(255, 0, 37, 102), fontSize: 40, fontWeight: FontWeight.bold ),),
         backgroundColor: Colors.blue[100],
      ),  backgroundColor: Colors.blue[100],

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('✦ ${todos[index]}'),

                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    onSubmitted: (value) {
                      addTodo(value);
                    },
                    decoration: InputDecoration(
                      hintText: 'Add a to-do...',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  hoverColor: Colors.blue[600],
                
                  onPressed: () {
                    // You can add more functionality here if needed
                    // For simplicity, just add the first item in the list
                    if (todos.isNotEmpty) {
                      addTodo(todos[0]);
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void addTodo(String todo) {
    setState(() {
      todos.add(todo);
    });
  }
}