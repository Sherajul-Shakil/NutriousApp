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
      ),
      body: Column(
        children: const [
          Text("This is Team member page"),
          Spacer(),
          NavBar(),
        ],
      ),
    ));
  }
}

//Text("This is Team member page")