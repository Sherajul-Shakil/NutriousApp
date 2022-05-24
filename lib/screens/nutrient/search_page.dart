import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutrious_web_app/model/nutrition_data.dart';
import 'package:nutrious_web_app/screens/components/navbar.dart';
import 'package:nutrious_web_app/screens/nutrient/constants.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

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
                            // final parsedData = jsonDecode(response.body);

                            // print(parsedData.toString());
                            //   print(valueHolder.items!.single.name.toString());
                            //print('\n\n\nHere:' + parsedData.data!.name);
                            final nutritionData =
                                nutritionDataV2FromJson(response.body);

                            if (nutritionData != null) {
                              setState(() {
                                isLoading = false;
                              });
                            }
                            valueHolder = nutritionData;
                            // print('Repo Print ${nutritionData.toString()}');
                            //  return nutritionData;
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

                        // await ref
                        //     .watch(
                        //         nutritionStateNotifierProviderV1.notifier)
                        //     .getNutritionData(nameController.text.trim());
                        // v1Data.maybeWhen(
                        //   success: (d) {
                        // sugar = d.items!.single.sugarG;
                        // fiber = d.items!.single.fiberG;
                        // size = d.items!.single.servingSizeG;
                        // sodium = d.items!.single.sodiumMg;
                        // name = d.items!.single.name;
                        // fatSaturated = d.items!.single.fatSaturatedG;
                        // fatTotal = d.items!.single.fatTotalG;
                        // calories = d.items!.single.calories;
                        // cholesterol = d.items!.single.cholesterolMg;
                        // protein = d.items!.single.proteinG;
                        // carbohydrate =
                        //     d.items!.single.carbohydratesTotalG;
                        // potassium = d.items!.single.potassiumMg;

                        return showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                content: SingleChildScrollView(
                                  child: isLoading
                                      ? CircularProgressIndicator()
                                      : Column(
                                          children: [
                                            Text(
                                              'Name: ${valueHolder.data?.name ?? 'Something Error Happend!!'}',
                                              style: GoogleFonts.breeSerif(
                                                  fontSize: 20),
                                            ),
                                            Container(
                                              height: 1,
                                              color: Colors.grey,
                                            ),

                                            Text(
                                              'Protein: ${valueHolder.data?.generalItems?.elementAt(3)} g',
                                              style: GoogleFonts.breeSerif(
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              'Carbohydrate: ${valueHolder.data?.generalItems?.elementAt(0)} g',
                                              style: GoogleFonts.breeSerif(
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              'Fiber: ${valueHolder.data?.generalItems?.elementAt(2)} g',
                                              style: GoogleFonts.breeSerif(
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              'Cholesterol: ${valueHolder.data?.generalItems?.elementAt(10)} mg',
                                              style: GoogleFonts.breeSerif(
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              'Fat Saturated: ${valueHolder.data?.generalItems?.elementAt(4)} g',
                                              style: GoogleFonts.breeSerif(
                                                  fontSize: 18),
                                            ),

                                            Text(
                                              'Sodium: ${valueHolder.data?.mineralItems?.elementAt(4)} mg',
                                              style: GoogleFonts.breeSerif(
                                                  fontSize: 18),
                                            ),
                                            // Text(
                                            //   'Potassium: ${valueHolder.items!.single.cholesterol!.toString()} Mg',
                                            //   style:
                                            //       GoogleFonts.breeSerif(fontSize: 18),
                                            // ),
                                          ],
                                        ),
                                ),
                              );
                            });

                        // },
                        // loading: () => CircularProgressIndicator(),
                        // orElse: () {
                        //   print('OrElse');
                        // },
                        //);
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
