import 'dart:html';

import 'package:flutter/material.dart';
import 'package:nutrious_web_app/screens/components/navbar.dart';

class TeamMember extends StatelessWidget {
  const TeamMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Team Members"),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: const [
          Text("This is Team member page"),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 200),
            child: NavBar(),
          ),
        ],
      ),
    ));
  }
}

//Text("This is Team member page")