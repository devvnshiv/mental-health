import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealth/ui/loginui/login.dart';
import 'package:mentalhealth/utils/Resposive.dart';



class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);
//
  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(
      seconds: 2,

    ),
            () {
      Navigator.push(context, MaterialPageRoute(builder: (_)=>Login_Page ()));



  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: Center(
        child: Column(

          children: [
            SizedBox(height: 19*AppSizeConfig.heightMultiplier!,),
            Container(
              height: 30*AppSizeConfig.heightMultiplier!,
              width: 90*AppSizeConfig.widthMultiplier!,
              child: Image.asset("assets/img.png",fit: BoxFit.fill,),
            ),
            SizedBox(height: 4*AppSizeConfig.heightMultiplier!,),
            Text("Mental Health Tracker",style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color:Colors.indigo, fontSize: 3.1*AppSizeConfig.textMultiplier!),)



          ],
        ),
      ),
    );
  }
}
