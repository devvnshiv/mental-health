import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealth/ui/catselection/catselection.dart';
import 'package:mentalhealth/ui/loginui/login.dart';
import 'package:mentalhealth/ui/questions/question.dart';
import 'package:mentalhealth/utils/Resposive.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 13*AppSizeConfig.heightMultiplier!,),
            Text("Wellcome  !!!",style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color:Colors.deepPurple, fontSize: 3.1*AppSizeConfig.textMultiplier!),),
            SizedBox(height: 2*AppSizeConfig.heightMultiplier!,),
            Center(
              child: Container(
                height: 65*AppSizeConfig.heightMultiplier!,
                width: 85*AppSizeConfig.widthMultiplier!,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                ),
                child: Column(
                  children: [
                    Text("Register",style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color:Colors.red, fontSize: 3.5*AppSizeConfig.textMultiplier!),),
                    SizedBox(height: 4*AppSizeConfig.heightMultiplier!,),
                    textfield( "  Email Id", ),
                    SizedBox(height: 4*AppSizeConfig.heightMultiplier!,),
                    textfield( " Name ", ),
                    SizedBox(height: 4*AppSizeConfig.heightMultiplier!,),
                    textfield( "  Contact Number", ),
                    SizedBox(height: 4*AppSizeConfig.heightMultiplier!,),
                    textfield( "  Password ", ),
                    SizedBox(height: 4*AppSizeConfig.heightMultiplier!,),
                    Row(
                      children: [
                        SizedBox(width: 4*AppSizeConfig.widthMultiplier!,),
                        GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_)=>Login_Page ()));
                            },


                            child: Text("Already Register? Login",style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color:Colors.indigo, fontSize: 1.4*AppSizeConfig.textMultiplier!),)),
                      ],
                    ),
                    SizedBox(height: 2*AppSizeConfig.heightMultiplier!,),
                    loginbutton()

                  ],
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }

  textfield( String name, ){
    return Container(
      height: 5*AppSizeConfig.heightMultiplier!,
      width: 78*AppSizeConfig.widthMultiplier!,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade500),
          borderRadius: BorderRadius.circular(6),
          color: Colors.white
      ),

      child: TextField(
        textAlign: TextAlign.start,
        decoration: InputDecoration(

            border: InputBorder.none,
            hintText: name

        ),
      ),
    );
  }


  loginbutton(){

    return  GestureDetector(
        onTap: ()=>
            Navigator.push(context, MaterialPageRoute(builder: (_)=>CatSelection ())),

     child: Container(
      height: 5*AppSizeConfig.heightMultiplier!,
      width: 75*AppSizeConfig.widthMultiplier!,
      decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(18),
          color: Colors.red
      ),
      child: Center(child: Text("Sign Up",style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color:Colors.white, fontSize: 2.4*AppSizeConfig.textMultiplier!),)),
    )
    );
  }


}
