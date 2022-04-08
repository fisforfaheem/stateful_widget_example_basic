import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyFirstWidget(),
    );
  }
}

class MyFirstWidget extends StatefulWidget {
  final Color color;
  const MyFirstWidget({Key? key, this.color = Colors.blue}) : super(key: key);

  @override
  State<MyFirstWidget> createState() => _MyFirstWidgetState();
}

class _MyFirstWidgetState extends State<MyFirstWidget> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          TextButton(
            child: Text(
              '$count',
            ),
            // color: widget.color,
            onPressed: () {
              setState(() {
                count++;
              });
            },
          ),
          TextButton(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            child: const Text(
              '+',
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                count--;
              });
            },
            child: const Text(
              '-',
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                count = 0;
              });
            },
            child: const Text(
              'Clear',
            ),
          ),
        ],
      ),
    );
  }
}
