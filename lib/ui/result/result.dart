import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {


 @override
  initState(){
   textformental();

 }

 var health = ["low","medium" ,'high', ];
 int? healthindex ;
 int?   piindex;
 textformental(){
   Random random = new Random();
   int randomNumber = random.nextInt(3);

   setState(() {
     healthindex=randomNumber;
     piindex = randomNumber;

   });
 }


List<Map<String, double>> dataMap = [{
  "Late-onset Alzheimer’s disease.": 7,
  'Arthritis': 3,
  'Chromosomal disorders': 3,
  "Monogenic disorders": 5,
},

  {
    "Trisomy 18.": 10,
    'AA amyloidosis.': 5,
    'Usher syndrome.': 7,
    "Ehlers-Danlos syndrome.": 25,
  },

  {
    "Deafness that’s present at birth": 15,
    'Isolated congenital heart defects.': 19,
    'Coronary artery disease.': 10,
    "Migraine headaches..": 20,
  },
    ];


var wellbing = [
  "Good relationships are important for your mental wellbeing. They can help you to build a sense of belonging and self-worthgive you an opportunity to share positive experiences provide emotional support and allow you to support others",
  "Being active is not only great for your physical health and fitness. Evidence also shows it can also improve your mental wellbeing by:raising your self-esteemhelping you to set goals or challenges and achieve themcausing chemical changes in your brain which can help to positively change your mood",
"Research shows that learning new skills can also improve your mental wellbeing by:boosting self-confidence and raising self-esteem helping you to build a sense of purposehelping you to connect with others Even if you feel like you do not have enough time, or you may not need to learn new things, there are lots of different ways to bring learning into your life."
];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Center(child: Text("Mental Health State  :"+" "+health[healthindex!], style:GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 20),)),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PieChart(
              dataMap: dataMap[piindex!],
              animationDuration: Duration(milliseconds: 800),
              chartLegendSpacing: 32,
              chartRadius: MediaQuery.of(context).size.width / 2.2,
              colorList: [Colors.green, Colors.red, Colors.blue, Colors.orange],
              initialAngleInDegree: 0,
              chartType: ChartType.ring,
              ringStrokeWidth: 32,
              centerText: "Mental Health Desorders",
              legendOptions: LegendOptions(
                showLegendsInRow: false,
                legendPosition: LegendPosition.right,
                showLegends: true,
                legendShape: BoxShape.circle,
                legendTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              chartValuesOptions: ChartValuesOptions(
                showChartValueBackground: true,
                showChartValues: true,
                showChartValuesInPercentage: false,
                showChartValuesOutside: false,
                decimalPlaces: 1,
              ),
              // gradientList: ---To add gradient colors---
              // emptyColorGradient: ---Empty Color gradient---
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Center(child: Text("mental wellbeing"+" ", style:GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 20),)),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Center(child: Text(wellbing[piindex!], style:GoogleFonts.poppins( fontSize: 17),)),
          ),

        ],
      ),
    );
  }
}
