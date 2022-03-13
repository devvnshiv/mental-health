import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealth/ui/loginui/login.dart';
import 'package:mentalhealth/utils/Resposive.dart';
import 'package:mentalhealth/widgets/preload.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Mocielanding extends StatefulWidget {
  const Mocielanding({Key? key}) : super(key: key);

  @override
  State<Mocielanding> createState() => _MocielandingState();
}

class _MocielandingState extends State<Mocielanding> {
  String groupvalue ="";
  int indexs=0;
  List<Map<dynamic, dynamic>> question = [
    {
      'question':'What kind of movies would you like to see today?',
      'answer':'',
      'otions':[
        'Horror',
        'Comedy',
        ' Romantic',
        'Action',
      ]
    },
    {
      'question':'you like to watch movies alone or with Friends',
      'answer':'',
      'otions':[
        'Alone',
        'with friends',

      ]
    },
    {
      'question':'How do you feel when you watch a movie?',
      'answer':'',
      'otions':[
        'Happy ',
        'Sad',
        'inspired',
        'Motivated',
      ]
    },
    {
      'question':'What percentage of you were impressed by the movie? ',
      'answer':'',
      'otions':[
        '80%',
        '50%',
        '40%',
        '30%'
      ]

    },

    {
      'question':'end ',
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
