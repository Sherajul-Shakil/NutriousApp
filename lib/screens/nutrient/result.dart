import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutrious_web_app/model/nutrition_data.dart';
import 'package:nutrious_web_app/screens/components/navbar.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ResultPage extends StatefulWidget {
  ResultPage({Key? key, required this.valueHolder}) : super(key: key);
  NutritionDataV2 valueHolder;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  double calculatePercent(double? total, double? item) {
    return (total! / item!);
  }

  @override
  Widget build(BuildContext context) {
    // print(widget.valueHolder.toString());
    // var valueHolder;
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Result"),
      //   centerTitle: true,
      //   backgroundColor: const Color(0xFFEB1555),
      //   automaticallyImplyLeading: false,
      // ),
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "The Nutrient values are",
              style: GoogleFonts.breeSerif(
                fontSize: 40,
                color: Colors.green[900],
              ),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      shadowColor: Colors.grey[100],
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 4.2,
                          child: Column(
                            children: [
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  // Text('Hello'),
                                  CircleChart(
                                    title: 'General Items',
                                    percent: calculatePercent(
                                      widget.valueHolder.data!
                                          .totalNutritionValue!.totGNutrition,
                                      widget.valueHolder.data!
                                          .totalNutritionValue!.totalNutrients,
                                    ),
                                    deepColor: Colors.teal.shade200,
                                    shadeColor: Colors.teal.shade50,
                                  ),
                                  CircleChart(
                                    title: 'Minerals',
                                    percent: calculatePercent(
                                      widget.valueHolder.data!
                                          .totalNutritionValue!.totMNutrition,
                                      widget.valueHolder.data!
                                          .totalNutritionValue!.totalNutrients,
                                    ),
                                    deepColor: Colors.amber,
                                    shadeColor: Colors.amber.shade100,
                                  ),
                                  CircleChart(
                                    title: 'Vitamins',
                                    percent: calculatePercent(
                                      widget.valueHolder.data!
                                          .totalNutritionValue!.totVNutrition,
                                      widget.valueHolder.data!
                                          .totalNutritionValue!.totalNutrients,
                                    ),
                                    deepColor: Colors.lightGreen,
                                    shadeColor: Colors.lightGreen.shade100,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: DetailItem(
                            title: 'General Items',
                            tColor: Colors.teal.shade200,
                            loopMax: widget
                                .valueHolder.data!.count!.generalItemsCount,
                            data: widget.valueHolder.data!.generalItems,
                            avatarOn: false,
                          ),
                        ),
                      ),
                      Expanded(
                        child: DetailItem(
                          title: 'Minerals',
                          tColor: Colors.amber,
                          loopMax:
                              widget.valueHolder.data!.count!.mineralItemCount,
                          data: widget.valueHolder.data!.mineralItems!,
                          avatarOn: true,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: DetailItem(
                            title: 'Vitamins',
                            tColor: Colors.lightGreen,
                            loopMax: widget
                                .valueHolder.data!.count!.vitaminItemCount,
                            data: widget.valueHolder.data!.vitaminItems,
                            avatarOn: false,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 300),
              child: NavBar(),
            )
          ],
        ),
      ),
    );
  }
}

class CircleChart extends StatelessWidget {
  const CircleChart({
    Key? key,
    required this.title,
    required this.percent,
    required this.deepColor,
    required this.shadeColor,
  }) : super(key: key);

  final String title;
  final double percent;
  final Color deepColor;
  final Color shadeColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      // shrinkWrap: true,
      children: [
        CircularPercentIndicator(
          radius: 100.0,
          lineWidth: 15.0,
          percent: percent,
          circularStrokeCap: CircularStrokeCap.butt,
          center: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${(percent * 100).toStringAsFixed(2)}%',
                style: GoogleFonts.breeSerif(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          progressColor: deepColor,
          backgroundColor: shadeColor,
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: GoogleFonts.breeSerif(
            color: Colors.grey[700],
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
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
          title: Row(
            textBaseline: TextBaseline.ideographic,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
              CircleAvatar(
                backgroundColor: tColor,
                radius: 15,
              ),
              const SizedBox(width: 15),
              Text(
                title,
                style: GoogleFonts.breeSerif(fontSize: 20),
              )
            ],
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
