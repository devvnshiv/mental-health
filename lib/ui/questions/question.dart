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
int indexs=0;
   List<Map<dynamic, dynamic>> question = [
    {
      'question':'How Happy do you feel today',
      'answer':'',
      'otions':[
        '40%',
        '50%',
        '80%',
        '20%',
      ]
    },
    {
      'question':'How many people did you meet today?',
      'answer':'',
      'otions':[
        '4',
        '5',
        '8',
        '2',
      ]
    },
    {
      'question':'How productive do you feel today?',
      'answer':'',
      'otions':[
        'Movies',
        'Sports',
        'Yoga',
        'work',
      ]
    },
     {
       'question':'end',
       'answer':'',
       'otions':[
       ]

     }



  ];


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
          child:  Center(child: Text(question[indexs]['question'].toString(),style: GoogleFonts.roboto(fontWeight: FontWeight.bold, color:Colors.red, fontSize: 2.1*AppSizeConfig.textMultiplier!),)),
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
            Expanded(
              child: ListView.builder(
              itemCount:question[indexs]['otions'].length,
              itemBuilder: (context, index){
               return options(question[indexs]['otions'][index]);
              }),
            ),

           

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
          if (indexs<question.length) {
            setState(() {
              groupvalue = value.toString();

              indexs = indexs + 1;
            });
          }

        }
      ),
      title:Text(o,style: GoogleFonts.roboto(fontWeight: FontWeight.bold, color:Colors.indigo, fontSize: 2.1*AppSizeConfig.textMultiplier!)
    ),

    );

  }



}
