import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("More info"),
        centerTitle: true,
        backgroundColor: Colors.pink[800],
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text("flutter projects"),
              Container(
                height: 45,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).go('/flutter');
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.pink[800]),
                  child: Text("Click here"),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text("web projects"),
              Container(
                height: 45,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).go('/web');
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.pink[800]),
                  child: Text("Click here"),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
