
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentalhealth/ui/catselection/catselection.dart';
import 'package:mentalhealth/ui/loginui/login.dart';
import 'package:mentalhealth/ui/questions/question.dart';
import 'package:mentalhealth/widgets/alertdilog.dart';
import 'package:mentalhealth/widgets/messagealert.dart';



import 'package:supabase_flutter/supabase_flutter.dart';

class Userdata{


  SetUser( String name, String email, BuildContext  context, String uid, String number) async{
    final res = await Supabase.instance.client
        .from('user')
        .insert([
      {'name': name, 'email':email, 'uid':uid, }
    ]).execute();
    if(res.hasError){

      AlertDialogs(context, " Error", res.error!.message);
    } else {

      MsgAlert(context ,"Alert" , "SignUp SuccessFully");
      Future.delayed(Duration(seconds: 2),(){
      Navigator.push(context, MaterialPageRoute(builder: (_)=>Login_Page()));


      });}
  }

}