import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Flutter extends StatefulWidget {
  const Flutter({super.key});

  @override
  State<Flutter> createState() => _FlutterState();
}

class _FlutterState extends State<Flutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flutter projects"),
        backgroundColor: Colors.pink[800],
      ),
      body: ElevatedButton(
        onPressed: () {
          GoRouter.of(context).go('/');
        },
        style: ElevatedButton.styleFrom(primary: Colors.pink[800]),
        child: Text("back to login page"),
      ),
    );
  }
}
