import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealth/data/loginrepo.dart';
import 'package:mentalhealth/ui/questions/question.dart';
import 'package:mentalhealth/ui/signupui/signup.dart';
import 'package:mentalhealth/utils/Resposive.dart';
import 'package:mentalhealth/widgets/textfield.dart';


class Login_Page extends StatefulWidget {
  const Login_Page({Key? key}) : super(key: key);

  @override
  _Login_PageState createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  GlobalKey<FormState> key = GlobalKey();
 bool isVisiable = true;

  TextEditingController email =TextEditingController();
  TextEditingController password =  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Form(
          key: key,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 13*AppSizeConfig.heightMultiplier!,),
                Text("Welcome  Back !!!",style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color:Colors.deepPurple, fontSize: 3.1*AppSizeConfig.textMultiplier!),),
                SizedBox(height: 2*AppSizeConfig.heightMultiplier!,),
                Center(
                  child: Container(
                    height: 50*AppSizeConfig.heightMultiplier!,
width:90*AppSizeConfig.widthMultiplier!,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                    ),
child: Column(
  children: [
    Text("Login",style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color:Colors.red, fontSize: 3.5*AppSizeConfig.textMultiplier!),),
    SizedBox(height: 4*AppSizeConfig.heightMultiplier!,),
    TextFields( hint:"Email Id",ofsure:false,controller: email,icon: Icons.email, vadidation: 1, ),
    SizedBox(height: 4*AppSizeConfig.heightMultiplier!,),
    Row(
      children: [
        Container(
            width:78*AppSizeConfig.widthMultiplier!,

            child: TextFields( hint:"password",ofsure: isVisiable,controller: password,icon: Icons.password, vadidation: 1, )),
        IconButton(onPressed: (){
            if(isVisiable){
              setState(() {
                isVisiable= false;
              });
            } else {
              setState(() {
                isVisiable= true;
              });
            }



        }, icon:isVisiable? Icon(Icons.visibility_outlined):Icon(Icons.visibility_off_outlined))


      ],
    ),
    SizedBox(height: 4*AppSizeConfig.heightMultiplier!,),
    Row(
      children: [
            SizedBox(width: 4*AppSizeConfig.widthMultiplier!,),
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>Signup()));
                },


                child: Text("yet to Register? Signup",style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color:Colors.indigo, fontSize: 1.4*AppSizeConfig.textMultiplier!),)),
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
        ),
      ),
    );
  }





  loginbutton(){

  return GestureDetector(
    onTap: (){
      if(key.currentState!.validate()){
        Auth().Signin(email.text, password.text, context);
      }

    },

  child:  Container(
        height: 5*AppSizeConfig.heightMultiplier!,
        width: 75*AppSizeConfig.widthMultiplier!,
        decoration: BoxDecoration(

    borderRadius: BorderRadius.circular(18),
    color: Colors.red
    ),
    child: Center(child: Text("Login",style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color:Colors.white, fontSize: 2.4*AppSizeConfig.textMultiplier!),)),

    )
  );
  }


}
