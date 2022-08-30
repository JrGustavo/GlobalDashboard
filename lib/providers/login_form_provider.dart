import 'package:admin_dashboard/providers/auth_provider.dart';
import 'package:flutter/material.dart';

class LoginFormProvider extends ChangeNotifier {

  GlobalKey<FormState>formKey = new GlobalKey<FormState>();

  String email = '';
  String password = '';

 bool  validateForm(){
    
     if   (formKey.currentState!.validate() ) {
  //  print('form valid ... login');
  // print('$email === $password');

       return true;


    }else{
     //  print('form valid ... fail');
       return false;
     }


  }

}