import 'package:flutter/material.dart';
import 'package:todo_app_assignment/elements/icon_check.dart';

class TaskCard extends StatefulWidget {
  const new({super.key, required this.title, required this.description});

  final String? title;
  final String? description;

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  bool _isCleared = false;

  void _onCheck() {
    setState(() {
      _isCleared = !_isCleared;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Opacity(
            opacity: _isCleared ? 0.5 : 1.0,
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          IconCheck(onChange: _onCheck),
                          InputTask(isDone: _isCleared),
                        ],
                      ),
                    ),
                    Icon(Icons.more_vert),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class InputTask extends StatefulWidget {
  const new({super.key, required this.isDone});

  final bool isDone;

  TextDecoration crossingText(bool done) => done ? .lineThrough : .none;

  @override
  State<InputTask> createState() => _InputTaskState();
}

class _InputTaskState extends State<InputTask> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Tugas 1",
          style: TextStyle(
            fontSize: 18,
            fontWeight: .bold,
            decoration: widget.crossingText(widget.isDone),
          ),
        ),
        Text(
          "Deskripsi",
          style: TextStyle(
            fontSize: 14,
            decoration: widget.crossingText(widget.isDone),
          ),
        ),
      ],
    );
  }
}
