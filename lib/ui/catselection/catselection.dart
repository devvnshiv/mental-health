import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealth/ui/moviequestion.dart';
import 'package:mentalhealth/ui/questions/question.dart';
import 'package:mentalhealth/utils/Resposive.dart';

class CatSelection extends StatefulWidget {
  const CatSelection({Key? key}) : super(key: key);

  @override
  _CatSelectionState createState() => _CatSelectionState();
}

class _CatSelectionState extends State<CatSelection> {

  bool yoga = false;
  bool movies = false;
  bool sports = false;
  bool  drama = false;
  bool music = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Column(

        children: [
          SizedBox(height: 6*AppSizeConfig.heightMultiplier!,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Select your interest",style: GoogleFonts.roboto(fontWeight: FontWeight.bold, color:Colors.white, fontSize: 2.7*AppSizeConfig.textMultiplier!),),
              GestureDetector(
                onTap: ()=>
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>landingpage (
                      question:  [
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
                          'question':'How do you feel today?',
                          'answer':'',
                          'otions':[
                            'Happy',
                            'Sad',
                            'Depressed',
                            'Relax',
                          ]
                        },
                        {
                          'question':'Where would you like to go today?',
                          'answer':'',
                          'otions':[
                            'Hillstation',
                            'Beach',
                            'Historical Places',
                            'Spiritual Place',
                          ]
                        },
                        {
                          'question':'end',
                          'answer':'',
                          'otions':[
                            "",
                            "",
                            "",
                            "",
                          ]

                        }



                      ]
                      ,
                      answer: ["","","","",""],



                    ))),
                child: Container(
                  height: 3*AppSizeConfig.heightMultiplier!,
                  width: 18*AppSizeConfig.widthMultiplier!,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),

                  ),
                  child:  Center(child: Text("Skip",style: GoogleFonts.roboto(fontWeight: FontWeight.bold, color:Colors.white, fontSize: 1.4*AppSizeConfig.textMultiplier!),)),
                ),
              )
            ],
          ),
          SizedBox(height: 6*AppSizeConfig.heightMultiplier!,),
          GestureDetector(
              onTap: () async{
                setState(() {
                  yoga = true;
                });
                await  Future. delayed(Duration(seconds: 2), (){


                });

                Navigator.push(context, MaterialPageRoute(builder: (_)=>landingpage(
                  question:  [
                    {
                      'question':'1. Do you do yoga everyday?',
                      'answer':'',
                      'otions':[
                        'yes',
                        'no',

                      ]
                    },
                    {
                      'question':'Do you like meditation ?',
                      'answer':'',
                      'otions':[
                        'yes',
                        "no"
                      ]
                    },
                    {
                      'question':' How do you feel after yoga?',
                      'answer':'',
                      'otions':[
                        'Fresh',
                        'Normal',
                        'Enthusiastic',
                        'Affectless',
                      ]
                    },
                    {
                      'question':'How do you feel today?',
                      'answer':'',
                      'otions':[
                        'Happy',
                        'Sad',
                        'Depressed',
                        'Relax',
                      ]
                    },
                    {
                      'question':'What benefits do you get after doing yoga??',
                      'answer':'',
                      'otions':[
                        ' Improve Health',
                        'Improve Concentration',
                        'Confident',
                        'Relax',
                      ]
                    },
                    {
                      'question':'end',
                      'answer':'',
                      'otions':[
                        "",
                        "",
                        "",
                        "",
                      ]

                    }



                  ]
                  ,
                  answer: ["","","","",""],








                )));
              },


              child: choice("Yoga", yoga)),
          SizedBox(height: 6*AppSizeConfig.heightMultiplier!,),
          GestureDetector(
              onTap: () async{
                setState(() {
                  movies = true;
                });
              await  Future. delayed(Duration(seconds: 2), (){


                });

                Navigator.push(context, MaterialPageRoute(builder: (_)=>landingpage(

                  question: [
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

                  }],

                  answer: ["","","","",""],






                )));
              },
              child: choice("Movies",movies)),
          SizedBox(height: 6*AppSizeConfig.heightMultiplier!,),
          GestureDetector(
              onTap: () async{
                setState(() {
                  sports = true;
                });
                await  Future. delayed(Duration(seconds: 2), (){


                });

                Navigator.push(context, MaterialPageRoute(builder: (_)=>landingpage(

                  question:  [
                    {
                      'question':'Do you play any sport?',
                      'answer':'',
                      'otions':[
                        'yes',
                        'no',

                      ]
                    },
                    {
                      'question':'Who is your professional Athelete?',
                      'answer':'',
                      'otions':[
                        'virat kohli',
                        'P.T Usha',
                        'neeraj chopra',
                        'P. V . sindhu',
                      ]
                    },
                    {
                      'question':'Which sport do you like to watch live?',
                      'answer':'',
                      'otions':[
                        'cricket',
                        'football',
                        'basketball',
                        'hockey',
                      ]
                    },
                    {
                      'question':'.Do you like fitness?',
                      'answer':'',
                      'otions':[
                        'yes',
                        'no',

                      ]
                    },
                    {
                      'question':'Are you good at playing any sport?',
                      'answer':'',
                      'otions':[
                        'cricket',
                        'football',
                        'basketball',
                        'hockey',
                      ]
                    },
                    {
                      'question':'end',
                      'answer':'',
                      'otions':[
                        "",
                        "",
                        "",
                        "",
                      ]

                    }



                  ]
                  ,
                  answer: ["","","","",""],





                )));
              },




              child: choice("sports", sports)),
          SizedBox(height: 6*AppSizeConfig.heightMultiplier!,),
          GestureDetector(
              onTap: () async{
                setState(() {
                  drama = true;
                });
                await  Future. delayed(Duration(seconds: 2), (){


                });

                Navigator.push(context, MaterialPageRoute(builder: (_)=>landingpage(

                  question:  [
                    {
                      'question':'Which type of drama do you like to watch?',
                      'answer':'',
                      'otions':[
                        'Horror',
                        'Romantic',
                        'Comedy',
                        'Action',

                      ]
                    },
                    {
                      'question':'Do you like to watch drama alone or with friends?',
                      'answer':'',
                      'otions':[
                        'alone',
                        "With friends"
                      ]
                    },
                    {
                      'question':' How do you feel after watching drama?',
                      'answer':'',
                      'otions':[
                        'sad',
                        'happy',
                        'relax',
                        'Inspired',
                      ]
                    },
                    {
                      'question':'Which type of character do you like to watch in drama?',
                      'answer':'',
                      'otions':[
                        '  Hero',
                        'Villain',
                      ]
                    },
                    {
                      'question':'Which is the best part of drama do you like to watch?',
                      'answer':'',
                      'otions':[
                        'Hero/Heroine entry',
                        'Climax',
                        'Story',
                        'Dialogue'

                      ]
                    },
                    {
                      'question':'end',
                      'answer':'',
                      'otions':[
                        "",
                        "",
                        "",
                        "",
                      ]

                    }



                  ]
                  ,
                  answer: ["","","","",""],










                )));
              },


              child: choice("drama", drama)),
          SizedBox(height: 6*AppSizeConfig.heightMultiplier!,),
          GestureDetector(
              onTap: () async{
                setState(() {
                  music = true;
                });
                await  Future. delayed(Duration(seconds: 2), (){


                });

                Navigator.push(context, MaterialPageRoute(builder: (_)=>landingpage(
                  question:  [
                    {
                      'question':'Which type of music do you like?',
                      'answer':'',
                      'otions':[
                        'Sad',
                        'classical',
                        'Party',
                        'Motivational',

                      ]
                    },
                    {
                      'question':'Who is your favourite singer from belowlist?',
                      'answer':'',
                      'otions':[
                        'Arijit singh',
                       'Shrey ghoshal',
                        'Baddshah',
                        'Sukhwineder singh'

                      ]
                    },
                    {
                      'question':'How do you feel after listening the music?',
                      'answer':'',
                      'otions':[
                        'Fresh',
                        'Realx',
                        'Energetic',
                        'Motivated',
                      ]
                    },
                    {
                      'question':'Do you like to play any instrument?',
                      'answer':'',
                      'otions':[
                       'yes',
                        'no',
                      ]
                    },
                    {
                      'question':' In what situation do you like listen to music?',
                      'answer':'',
                      'otions':[
                        ' sad',
                        'party mood',
                        'happy',
                        'Boring',
                      ]
                    },
                    {
                      'question':'end',
                      'answer':'',
                      'otions':[
                        "",
                        "",
                        "",
                        "",
                      ]

                    }



                  ]
                  ,
                  answer: ["","","","",""],











                )));
              },


              child: choice("Music",music)),
          SizedBox(height: 6*AppSizeConfig.heightMultiplier!,),

        ],


      ),

    );
  }
 Widget  choice (String text,  bool call ){
    return   Container(
      height: 6*AppSizeConfig.heightMultiplier!,
      width: 75*AppSizeConfig.widthMultiplier!,
      decoration: BoxDecoration(
        border: Border.all(color: call ?Colors.green : Colors.white),
        borderRadius: BorderRadius.circular(22)

      ),
      child:  Center(child: Text(text,style: GoogleFonts.roboto(fontWeight: FontWeight.bold, color: call ?Colors.green : Colors.white, fontSize: 1.9*AppSizeConfig.textMultiplier!),)),
    );
   }

  sumbmit (String text){
    return GestureDetector(

        onTap: ()=>
            Navigator.push(context, MaterialPageRoute(builder: (_)=>landingpage ())),
     child: Container(
      height: 5.5*AppSizeConfig.heightMultiplier!,
      width: 70*AppSizeConfig.widthMultiplier!,
      decoration: BoxDecoration(
        color: Colors.redAccent,
          borderRadius: BorderRadius.circular(5)

      ),
      child:  Center(child: Text(text,style: GoogleFonts.roboto(fontWeight: FontWeight.bold, color:Colors.white, fontSize: 1.9*AppSizeConfig.textMultiplier!),)),
    )  );
  }


}
