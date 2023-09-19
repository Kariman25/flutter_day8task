import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task8_flutter/Moredetails.dart';
import 'package:task8_flutter/flutter_projects.dart';
import 'package:task8_flutter/profilepage.dart';
import 'package:task8_flutter/web_projects.dart';

void main() {
  runApp(Myapp());
}

GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => LoginPage(),
  ),
  GoRoute(
    path: '/profile',
    builder: (context, state) => Profile(),
  ),
  GoRoute(
    path: '/details',
    builder: (context, state) => Details(),
  ),
  GoRoute(
    path: '/flutter',
    builder: (context, state) => Flutter(),
  ),
  GoRoute(
    path: '/web',
    builder: (context, state) => Web(),
  ),
]);

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.pink[800],
      ),
      body: Center(
        child: Column(
          children: [
            Text("UserName: "),
            Container(
              height: 35,
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your username",
                ),
              ),
            ),
            Text("Password: "),
            Container(
              height: 35,
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your password",
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).go('/profile');
                },
                style: ElevatedButton.styleFrom(primary: Colors.pink[800]),

                child: Text("Login")),

          ],
        ),
      ),
    );
  }
}
