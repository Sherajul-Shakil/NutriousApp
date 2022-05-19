import 'package:flutter/material.dart';
import 'package:nutrious_web_app/screens/components/navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Nutrious Website"),
        centerTitle: true,
        backgroundColor: Color(0xFFEB1555),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: const [
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
