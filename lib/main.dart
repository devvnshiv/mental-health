import 'package:flutter/material.dart';
import 'package:mentalhealth/ui/splashscreen/splashscreen.dart';
import 'package:mentalhealth/utils/Resposive.dart';
import 'package:mentalhealth/widgets/splash.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async{

  var a = await Supabase.initialize(url: 'https://kstextimtraawposssjl.supabase.co', anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImtzdGV4dGltdHJhYXdwb3Nzc2psIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NDcwNDIyNjAsImV4cCI6MTk2MjYxODI2MH0.uWcM4bNyBUdzder8fQ14kqhl_btbGfVLFa8xROYCrQk');

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