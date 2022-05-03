import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealth/ui/loginui/login.dart';
import 'package:mentalhealth/ui/result/result.dart';
import 'package:mentalhealth/utils/Resposive.dart';
import 'package:mentalhealth/widgets/preload.dart';
import 'package:shared_preferences/shared_preferences.dart';

class landingpage extends StatefulWidget {
  final question;
  final answer;


  const landingpage({Key? key, this.answer, this.question}) : super(key: key);

  @override
  _landingpageState createState() => _landingpageState();
}

class _landingpageState extends State<landingpage> {
  String groupvalue ="";

int indexs=0;


  @override
  Widget build(BuildContext context) {
    if(indexs==5){
      Navigator.push(context, MaterialPageRoute(builder: (_)=>Result()));
    }
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
          child:  Center(child: Text(widget.question[indexs]['question'].toString(),style: GoogleFonts.roboto(fontWeight: FontWeight.bold, color:Colors.red, fontSize: 2.1*AppSizeConfig.textMultiplier!),)),
        ),
      ),
          SizedBox(height: 7*AppSizeConfig.heightMultiplier!,),
      Container(
        height: 40*AppSizeConfig.heightMultiplier!,
        width: 96*AppSizeConfig.widthMultiplier!,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(9)

//question[indexs]['otions'][index]
        ),
        child: Column(
          children: [
        ListTile(
        leading: Radio(
            value:widget.question[indexs]['otions'][0].toString(),
            groupValue:widget.answer[indexs],
            onChanged: (value)async {
              if (indexs<widget.question.length) {
                setState(() {
                widget . answer[indexs]=value.toString();

                });
                await  Future.delayed(Duration(seconds: 2),(){
                  setState(() {
                    indexs = indexs + 1;
                  });
                });

                print(widget.answer);
              }

            }
        ),
        title:Text(widget.question[indexs]['otions'][0],style: GoogleFonts.roboto(fontWeight: FontWeight.bold, color:Colors.indigo, fontSize: 2.1*AppSizeConfig.textMultiplier!)
        ),

      ),

            ListTile(
              leading: Radio(
                  value:widget.question[indexs]['otions'][1].toString(),
                  groupValue:widget.answer[indexs],
                  onChanged: (value)async {
                    if (indexs<widget.question.length) {
                      setState(() {
                      widget.  answer[indexs]=value.toString();

                      });
                      await  Future.delayed(Duration(seconds: 2),(){
                        setState(() {
                          indexs = indexs + 1;
                        });
                      });

                      print(widget.answer);
                    }

                  }
              ),
              title:Text(widget.question[indexs]['otions'][1],style: GoogleFonts.roboto(fontWeight: FontWeight.bold, color:Colors.indigo, fontSize: 2.1*AppSizeConfig.textMultiplier!)
              ),

            ),
            widget.question[indexs]['otions'].length> 2?   ListTile(
                 leading: Radio(
                  value:widget.question[indexs]['otions'][2].toString(),
                  groupValue:widget.answer[indexs],
                  onChanged: (value)async {
                    if (indexs<widget.question.length) {
                      setState(() {
                       widget. answer[indexs]=value.toString();

                      });
                      await  Future.delayed(Duration(seconds: 2),(){
                        setState(() {
                          indexs = indexs + 1;
                        });
                      });

                      print(widget.answer);
                    }

                  }
              ),
              title:Text(widget.question[indexs]['otions'][2],style: GoogleFonts.roboto(fontWeight: FontWeight.bold, color:Colors.indigo, fontSize: 2.1*AppSizeConfig.textMultiplier!)
              ),

            )
            :Container(),
            widget.question[indexs]['otions'].length> 2?    ListTile(
              leading: Radio(
                  value:widget.question[indexs]['otions'][3].toString(),
                  groupValue:widget.answer[indexs],
                  onChanged: (value)async {
                    if (indexs<widget.question.length) {
                      setState(() {
                      widget.  answer[indexs]=value.toString();

                      });
                      await  Future.delayed(Duration(seconds: 2),(){
                        setState(() {
                          indexs = indexs + 1;
                        });
                      });

                      print(widget.answer);
                    }

                  }
              ),
              title:Text(widget.question[indexs]['otions'][3],style: GoogleFonts.roboto(fontWeight: FontWeight.bold, color:Colors.indigo, fontSize: 2.1*AppSizeConfig.textMultiplier!)
              ),

            ): Container(),


        ],
        )
      ),
          Row()
        ]
      ),
    );
  }







}
