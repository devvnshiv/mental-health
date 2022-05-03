import 'package:flutter/material.dart';
import 'package:mentalhealth/ui/catselection/catselection.dart';
import 'package:mentalhealth/ui/questions/question.dart';
import 'package:mentalhealth/ui/result/result.dart';
import 'package:mentalhealth/ui/splashscreen/splashscreen.dart';
import 'package:mentalhealth/utils/Resposive.dart';
import 'package:mentalhealth/widgets/splash.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async{

  var a = await Supabase.initialize(url: 'https://iizqjdmitvkchwaiqlix.supabase.co', anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImlpenFqZG1pdHZrY2h3YWlxbGl4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTEzODU3NTIsImV4cCI6MTk2Njk2MTc1Mn0.IyFBWjHXVq2OH8jggtLi1Oy7AAlxVASbCiALL3NfLo0');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final String? uid;

  const MyApp({Key? key, this.uid}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, oriantion) {
        AppSizeConfig().init(constraints, oriantion);
        return MaterialApp(
              title: 'mental health',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                // This is the theme of your application.
                //
                // Try running your application with "flutter run". You'll see the
                // application has a blue toolbar. Then, without quitting the app, try
                // changing the primarySwatch below to Colors.green and then invoke
                // "hot reload" (press "r" in the console where you ran "flutter run",
                // or simply save your changes to "hot reload" in a Flutter IDE).
                // Notice that the counter didn't reset back to zero; the application
                // is not restarted.nn

                  primarySwatch: Colors.blue
              ),
              home:SplashScreen(),
          );
      });
    });
  }
}