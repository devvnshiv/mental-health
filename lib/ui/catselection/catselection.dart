import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealth/ui/questions/question.dart';
import 'package:mentalhealth/utils/Resposive.dart';

class CatSelection extends StatefulWidget {
  const CatSelection({Key? key}) : super(key: key);

  @override
  _CatSelectionState createState() => _CatSelectionState();
}

class _CatSelectionState extends State<CatSelection> {
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
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>landingpage ())),
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
          choice("Yoga"),
          SizedBox(height: 6*AppSizeConfig.heightMultiplier!,),
          choice("Movies"),
          SizedBox(height: 6*AppSizeConfig.heightMultiplier!,),
          choice("sports"),
          SizedBox(height: 6*AppSizeConfig.heightMultiplier!,),
          choice("drama"),
          SizedBox(height: 6*AppSizeConfig.heightMultiplier!,),
          choice("Music"),
          SizedBox(height: 6*AppSizeConfig.heightMultiplier!,),
          sumbmit("Submit")
        ],


      ),

    );
  }
   choice (String text){
    return   Container(
      height: 6*AppSizeConfig.heightMultiplier!,
      width: 75*AppSizeConfig.widthMultiplier!,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(22)

      ),
      child:  Center(child: Text(text,style: GoogleFonts.roboto(fontWeight: FontWeight.bold, color:Colors.white, fontSize: 1.9*AppSizeConfig.textMultiplier!),)),
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
