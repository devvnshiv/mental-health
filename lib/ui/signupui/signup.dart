import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentalhealth/data/loginrepo.dart';
import 'package:mentalhealth/ui/catselection/catselection.dart';
import 'package:mentalhealth/ui/loginui/login.dart';
import 'package:mentalhealth/ui/questions/question.dart';
import 'package:mentalhealth/utils/Resposive.dart';
import 'package:mentalhealth/widgets/textfield.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  GlobalKey<FormState> key = GlobalKey();
  TextEditingController email =TextEditingController();
  TextEditingController password =  TextEditingController();
  TextEditingController name= TextEditingController();
  TextEditingController number= TextEditingController();
  bool isVisiable =true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Form(
          key: key,
          child: Column(
            children: [
              SizedBox(height: 13*AppSizeConfig.heightMultiplier!,),
              Text("Welcome  !!!",style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color:Colors.deepPurple, fontSize: 3.1*AppSizeConfig.textMultiplier!),),
              SizedBox(height: 2*AppSizeConfig.heightMultiplier!,),
              Center(
                child: Container(
                  height: 65*AppSizeConfig.heightMultiplier!,
                  width: 90*AppSizeConfig.widthMultiplier!,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                  ),
                  child: Column(
                    children: [
                      Text("Register",style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color:Colors.red, fontSize: 3.5*AppSizeConfig.textMultiplier!),),
                      SizedBox(height: 4*AppSizeConfig.heightMultiplier!,),
                      TextFields( hint:"  Email Id",ofsure:false,controller: email,icon: Icons.email , vadidation: 1,),
                      SizedBox(height: 4*AppSizeConfig.heightMultiplier!,),
                      TextFields( hint:" name",ofsure:false,controller: name,icon: Icons.supervised_user_circle_outlined, vadidation: 1, ),
                      SizedBox(height: 4*AppSizeConfig.heightMultiplier!,),
                      TextFields( hint:"contact number",ofsure:false,controller: number,icon: Icons.contact_phone_outlined, vadidation: 10,),
                      SizedBox(height: 4*AppSizeConfig.heightMultiplier!,),
                      Row(
                        children: [
                          Container(
                              width:75*AppSizeConfig.widthMultiplier!,

                              child:
                                  TextFields( hint:"password",ofsure: isVisiable,controller: password,icon: Icons.password, vadidation: 1, ),




                              ),
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



                          }, icon:isVisiable? Icon(Icons.visibility_outlined):Icon(Icons.visibility_off_outlined)),

                        ],
                      ),

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
      ),
    );
  }


  loginbutton( ){

    return  GestureDetector(
        onTap: (){
if(key.currentState!.validate()){
  print(password);
  Auth().Signup(email.text, password.text, context, name.text, number.text);

}
        },


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
