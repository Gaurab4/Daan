import 'package:bloodbank_app/Screens/login.dart';
import 'package:bloodbank_app/helpers/appcolors.dart';

import 'package:flutter/material.dart';


class Welcomescreen extends StatefulWidget {
  const Welcomescreen({Key? key}) : super(key: key);

  @override
  _WelcomescreenState createState() => _WelcomescreenState();
}

class _WelcomescreenState extends State<Welcomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(219,233,247,1),
        child: Stack(
          children: [

            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: ClipOval(
                      child: Container(
                        width:180,
                        height: 180,
                          color: AppColors.MAIN_COLOR,
                        child: const Image(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/imgs/main_logo.png'),)

                      ),
                    ),
                  ),
                  const SizedBox(height:30),
                  const Text("Daan",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.WELTEXT,
                    fontSize: 40,
                    fontWeight:FontWeight.bold
                  ),
                  ),
                  const SizedBox(height:30),
                  const Text('Online Blood Bank',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color:AppColors.WELTEXT,
                      fontSize: 20,

                    ),
                  ),

                  const Text('Take ,Give, Request \n'

                      'For Free',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.WELTEXT,
                      fontSize: 20,
                      fontWeight: FontWeight.w200
                    ),
                  ),
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: FlatButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)
                      ),

                      color:Color.fromRGBO(240, 246, 251, 1.0),
                        child: const Text('Next',
                          style:TextStyle(
                            color:AppColors.WELTEXT,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          )
                        ),

                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
