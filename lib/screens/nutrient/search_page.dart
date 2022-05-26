import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutrious_web_app/model/nutrition_data.dart';
import 'package:nutrious_web_app/screens/components/navbar.dart';
import 'package:nutrious_web_app/screens/nutrient/constants.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:nutrious_web_app/screens/nutrient/result.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  double? sugar;
  double? fiber;
  double? size;
  double? sodium;
  String? name;
  double? potassium;
  double? fatSaturated;
  double? fatTotal;
  double? calories;
  double? cholesterol;
  double? protein;
  double? carbohydrate;
  bool isLoading = false;

  final nameController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    NutritionDataV2 valueHolder;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Nutrition"),
        centerTitle: true,
        backgroundColor: Color(0xFFEB1555),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 300, vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Explore The Nutritions!",
                    style: GoogleFonts.breeSerif(
                      fontSize: 32,
                      color: Colors.green[900],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: secondaryGreyColor,
                  boxShadow: homeBoxShadowColor,
                ),
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 2,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Search By any food name',
                    labelStyle: GoogleFonts.breeSerif(
                      fontSize: 16,
                      color: Colors.green[900],
                    ),
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      onPressed: () async {
                        try {
                          setState(() {
                            isLoading = true;
                          });
                          final http.Response response = await http.get(Uri.parse(
                              'https://nutritionapiv2.herokuapp.com/test/q?name=' +
                                  nameController.text));
                          if (response.statusCode == 200) {
                            final nutritionData =
                                nutritionDataV2FromJson(response.body);

                            if (nutritionData != null) {
                              setState(() {
                                isLoading = false;
                              });
                            }
                            valueHolder = nutritionData;
                          } else if (response.statusCode == 404) {
                            throw Failure(
                                failureMessage: 'Not Found any data!');
                          } else {
                            throw Failure(
                                failureMessage: 'Check Internet Connection!');
                          }
                        } on SocketException {
                          throw Failure(
                              failureMessage: 'Check Internet Connection!');
                        }

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ResultPage(valueHolder: valueHolder)),
                        );
                      },
                      splashColor: Colors.transparent,
                      icon: const Icon(Icons.search),
                      iconSize: 32,
                    ),
                  ),
                  autocorrect: false,
                  controller: nameController,
                ),
              ),
              SizedBox(height: height / 3.5),
              const Spacer(),
              const NavBar(),
            ],
          ),
        ),
      ),
    );
  }
}

class Failure {
  final String failureMessage;

  Failure({required this.failureMessage});
  //print(failureMessage);
}

class DetailItem extends StatelessWidget {
  const DetailItem({
    Key? key,
    required this.title,
    required this.tColor,
    required this.loopMax,
    required this.data,
    required this.avatarOn,
  }) : super(key: key);
  final String title;
  final Color tColor;
  final int? loopMax;
  final List<Item>? data;
  final bool avatarOn;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: ExpansionTile(
          textColor: Colors.black,
          title: Container(
            child: Row(
              textBaseline: TextBaseline.ideographic,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                CircleAvatar(
                  backgroundColor: tColor,
                  radius: 15,
                ),
                SizedBox(width: 15),
                Text(
                  title,
                  style: GoogleFonts.breeSerif(fontSize: 20),
                )
              ],
            ),
          ),
          expandedAlignment: Alignment.centerLeft,
          collapsedBackgroundColor: Colors.white,
          childrenPadding:
              const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          children: [
            for (int i = 0; i < loopMax!; i++)
              ListTile(
                leading: avatarOn
                    ? CircleAvatar(
                        backgroundColor: Colors.black87,
                        radius: 18,
                        child: Text(
                          data![i].nutrientName!.toString().split(',').last,
                          style: GoogleFonts.breeSerif(color: Colors.white),
                        ),
                      )
                    : SizedBox(height: 2, width: 2),
                title: Text(
                  data![i].nutrientName!.toString(),
                  style: GoogleFonts.breeSerif(
                    fontSize: 18,
                  ),
                ),
                trailing: Text(
                  '${data![i].nutrientValue!.toString()} ${(Unit.values[data![i].unit!.index]).toString().split('.').last.toLowerCase()}',
                  style: GoogleFonts.breeSerif(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
