import 'package:flutter/material.dart';

import 'package:form_validator/form_validator.dart';

import 'Resposive.dart';


class TextFields extends StatelessWidget {
  final String?  hint;
  final bool?   ofsure;
  final TextEditingController? controller;
  final IconData? icon;
  final int? vadidation;

  const TextFields({Key? key, this.hint, this.ofsure, this.controller, this.icon, this.vadidation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(


      child: TextFormField(
obscureText: ofsure!,
        validator: ValidationBuilder()
            .minLength(vadidation!)
            .build(),
        controller: controller!,




        onChanged: (value) {

        },
        decoration: InputDecoration(
            focusColor: Colors.grey,

            hintText: hint!,
            icon: Icon(icon!, color: Colors.black,),
            disabledBorder: InputBorder.none


        ),
      ),
    );
  }
}