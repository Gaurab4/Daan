import 'package:bloodbank_app/Screens/home/homepage.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool onpress = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context){
    if(_formKey.currentState!.validate()){
      setState(() {
        onpress = true;
      });
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Homepage()),
      );
    }
    }


  @override
  Widget build(BuildContext context) {

    return Material(
      child: Column(
        children: [
          Image.asset("assets/imgs/login.png"),
          SizedBox(height: 10,),
          Text(
            "WELCOME",
            style:TextStyle(
              fontSize:24,
              fontWeight: FontWeight.bold
            )
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
            child: Form(
              key:  _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username"
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Username cannot be empty";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter password",
                        labelText: "Password"
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Password cannot be empty";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15),
                 InkWell(
                   onTap: () => moveToHome(context),


                   child: Container(
                     width: 100,
                     height: 40,
                     alignment:   Alignment.center,
                     child: Text(
                       'Login',
                       style: TextStyle(
                         color: Colors.white,
                         fontWeight: FontWeight.bold,
                         fontSize: 18,
                       ),
                     ),
                     decoration: BoxDecoration(
                       color: Colors.lightBlueAccent,
                       borderRadius: BorderRadius.circular(8)),
                   ),
                 )
                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
}
