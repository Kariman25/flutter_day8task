import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Web extends StatefulWidget {
  const Web({super.key});

  @override
  State<Web> createState() => _WebState();
}

class _WebState extends State<Web> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("web projects"),
        centerTitle: true,
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
