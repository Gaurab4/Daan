
import 'package:bloodbank_app/Screens/welcomescreen.dart';
import 'package:bloodbank_app/helpers/iconhelper.dart';
import 'package:bloodbank_app/widgets/iconfont.dart';
import 'package:flutter/material.dart';




class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}




class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState(){
    super.initState();
     _navigatortohome();
  }

_navigatortohome() async{
    await Future.delayed(Duration(milliseconds: 1500),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Welcomescreen()));
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            Container(
              color: Colors.lightBlueAccent,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Text(
                    "Daan",
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,

                    )
                  ),
                  SizedBox(height: 10,),
                  IconFont(
                    color: Colors.white,
                    iconName: IconFontHelper.LOGO,
                    size: 100,
                  ),

                ],
              ),


        ),
      ),
    );
  }
}
