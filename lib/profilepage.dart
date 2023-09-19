import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("profile"),
        centerTitle: true,
        backgroundColor: Colors.pink[800],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 60,
              width: 50,
              child: Image(
                image: AssetImage('assets/pic.jpeg'),
              ),
            ),
            Text("my name is: "),
            Text("my number is:"),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).go('/details');
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.pink[800]),
                  child: Text("More Info"),
                ),

                // FloatingActionButton(
                //   child: FaIcon(FontAwesomeIcons.whatsapp),
                //   backgroundColor: Colors.green.shade800,
                //   onPressed: () {
                //
                //     String url =
                //         "https://wa.me/+923045873730/?text=Hello";
                //     launch(url);
                //
                //   },
                // ),
              ],
            )
          ],
        ),
      ),

      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      // backgroundColor: Colors.green,
      // floatingActionButton: FloatingActionButton(onPressed: (){
      //
      // },
      // child: Icon(Icons.whatsapp),)
    );
  }
}
