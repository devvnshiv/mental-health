import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealth/ui/loginui/login.dart';
import 'package:mentalhealth/utils/Resposive.dart';
import 'package:mentalhealth/widgets/preload.dart';
import 'package:shared_preferences/shared_preferences.dart';

class landingpage extends StatefulWidget {
  const landingpage({Key? key}) : super(key: key);

  @override
  _landingpageState createState() => _landingpageState();
}

class _landingpageState extends State<landingpage> {
  String groupvalue ="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backwardsCompatibility: false,
        elevation: 2,
        backgroundColor: Colors.white,
        centerTitle: true,
        title:const Text("Mental Health", style: TextStyle(color: Colors.indigo),),

        actions: [
          IconButton(onPressed: () async{
            final prefs = await SharedPreferences.getInstance();
            prefs.remove('uid');
            showMyDialog(context);
            Navigator.push(context, MaterialPageRoute(builder: (_)=>Login_Page()));
          }, icon:Icon( Icons.logout, color: Colors.black,))
        ],



      ),
      backgroundColor: Colors.indigo,
      body: Column(
        children: [
          SizedBox(height: 10*AppSizeConfig.heightMultiplier!,),
      Center(
        child: Container(
        height: 9*AppSizeConfig.heightMultiplier!,
          width: 90*AppSizeConfig.widthMultiplier!,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(9)

          ),
          child:  Center(child: Text("Question 1",style: GoogleFonts.roboto(fontWeight: FontWeight.bold, color:Colors.red, fontSize: 2.1*AppSizeConfig.textMultiplier!),)),
        ),
      ),
          SizedBox(height: 7*AppSizeConfig.heightMultiplier!,),
      Container(
        height: 40*AppSizeConfig.heightMultiplier!,
        width: 96*AppSizeConfig.widthMultiplier!,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(9)


        ),
        child: Column(
          children: [
            options(" option 1"),
            options(" option 2"),
            options(" option 3"),
            options(" option 4")

        ],
        )
      ),
          Row()
        ]
      ),
    );
  }

  options( String o){
    return   ListTile(
      leading: Radio(
        value: o,
        groupValue:groupvalue,
        onChanged: (value) {
          setState(() {
groupvalue=value.toString();
          });
        },
      ),
      title:Text(o,style: GoogleFonts.roboto(fontWeight: FontWeight.bold, color:Colors.indigo, fontSize: 2.1*AppSizeConfig.textMultiplier!)
    ),

    );

  }



}
