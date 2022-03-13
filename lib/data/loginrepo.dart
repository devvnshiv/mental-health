
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentalhealth/data/userrepo.dart';
import 'package:mentalhealth/ui/catselection/catselection.dart';
import 'package:mentalhealth/ui/questions/question.dart';
import 'package:mentalhealth/widgets/alertdilog.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

class Auth{


  Signup( String email, String paswword, BuildContext context, String name, String number) async{
    final prefs = await SharedPreferences.getInstance();
    final res = await   Supabase.instance.client.auth.signUp(email,paswword,);

    final user = res.data?.user;
    final error = res.error;

if(error!=null){

  AlertDialogs(context, " Error", res.error!.message);
} else {
  await prefs.setString('uid', res.user!.id);
  Userdata().SetUser(name, email, context, res.user!.id,number );
}
}



  Signin(String email, String pasword, BuildContext context) async{
    final prefs = await SharedPreferences.getInstance();
    final res = await  Supabase.instance.client.auth.signIn(email: email,password: pasword);
    final error = res.error;
  if(error!= null){

    AlertDialogs(context, " Error", res.error!.message);
  }else {
    await prefs.setString('uid', res.user!.id);

    Navigator.push(context, MaterialPageRoute(builder: (_)=>CatSelection()));
  }
  }





}