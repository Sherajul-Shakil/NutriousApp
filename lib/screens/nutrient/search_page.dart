import 'dart:convert';
import 'dart:typed_data';

import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nutrious_web_app/model/nutrition_data.dart';
import 'package:nutrious_web_app/screens/components/navbar.dart';
import 'package:nutrious_web_app/screens/nutrient/constants.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:nutrious_web_app/screens/nutrient/model.dart';
import 'package:nutrious_web_app/screens/nutrient/result.dart';
import 'package:nutrious_web_app/screens/nutrient/model.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 300, vertical: 10),
          child: Column(
            children: [
              const SizedBox(height: 10),
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
              const SizedBox(height: 20),
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
                    labelText: 'Search By any fruit name',
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
              ChangeNotifierProvider<MyProvider>(
                create: (context) => MyProvider(),
                child: Consumer<MyProvider>(
                  builder: (context, provider, child) {
                    return Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Search with Image",
                          style: GoogleFonts.breeSerif(
                            fontSize: 32,
                            color: Colors.green[900],
                          ),
                        ),
                        if (provider.image != null)
                          Image.network(
                            provider.image!.path,
                            height: 200,
                            width: 200,
                          ),
                        if (provider.image == null)
                          IconButton(
                            onPressed: () async {
                              var image = await ImagePicker()
                                  .getImage(source: ImageSource.gallery);
                              provider.setImage(image);
                            },
                            icon: const Icon(Icons.image_rounded),
                            iconSize: 150,
                            color: Color.fromARGB(255, 94, 143, 97),
                          ),
                        if (provider.image != null)
                          TextButton(
                            onPressed: () async {
                              if (provider.image == null) return;
                              await provider.makePostRequest();

                              print(provider.responseData?.data?.first.name);
                            },
                            child: Text(
                              "Detect Fruit",
                              style: GoogleFonts.breeSerif(
                                fontSize: 20,
                                color: Colors.green[900],
                              ),
                            ),
                          ),
                        if (provider.responseData?.data?.first.name != null)
                          Text(
                            'This is ${provider.responseData?.data?.first.name}',
                            style: GoogleFonts.breeSerif(
                              fontSize: 20,
                              color: Colors.red.shade700,
                            ),
                          ),
                        if (provider.responseData?.data?.first.name != null)
                          FlatButton(
                            onPressed: () async {
                              try {
                                setState(() {
                                  isLoading = true;
                                });
                                final http.Response response = await http.get(
                                    Uri.parse(
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
                                      failureMessage:
                                          'Check Internet Connection!');
                                }
                              } on SocketException {
                                throw Failure(
                                    failureMessage:
                                        'Check Internet Connection!');
                              }

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ResultPage(valueHolder: valueHolder)),
                              );
                            },
                            child: Text(
                              "View Nutrients",
                              style: GoogleFonts.breeSerif(
                                fontSize: 20,
                                color: Colors.green[900],
                              ),
                            ),
                            color: Colors.green.shade100,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              //side: BorderSide(color: Colors.red)
                            ),
                          ),
                      ],
                    );
                  },
                ),
              ),
              //SizedBox(height: height / 3.5),
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

class MyProvider extends ChangeNotifier {
  PickedFile? image;
  Data2? responseData;

  Future setImage(img) async {
    image = img;
    notifyListeners();
  }

  Future makePostRequest() async {
    String url = 'https://food-recognition-ssm.herokuapp.com/v1/';
    var headers = {
      //YOUR HEADERS
    };
    PickedFile imgFile = PickedFile(image!.path);

    var stream = http.ByteStream(DelegatingStream.typed(imgFile.openRead()));

    var request = http.MultipartRequest('POST', Uri.parse(url));
    //request.headers.addAll(headers);
    Uint8List data = await image!.readAsBytes();

    int length = data.length;

    List<int> list = data.cast();
    // request.files.add(
    //     http.MultipartFile.fromBytes('image', list, filename: 'testImage.jpg'));
    var multipartFile = http.MultipartFile(
      'image',
      stream,
      length,
      filename: basename(imgFile.path),
      contentType: MediaType(
        'image',
        'png',
      ),
    );
    request.files.add(multipartFile);
    var response = await request.send();

    //print(response.statusCode);
    response.stream.transform(utf8.decoder).listen((value) {}).onData((data) {
      notifyListeners();
      //x = data;

      responseData = dataFromJson(data);
    });
  }
}
