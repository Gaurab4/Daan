import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Profile2 extends StatelessWidget {
  const Profile2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0,
        shadowColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 25,)),
            CircleAvatar(

              radius: 95,
              child: Image.asset("assets/imgs/p2.jpeg",height: 123,width: 123,),
              backgroundColor: Colors.transparent,
            ),
            SizedBox(height:12),
            Text(
              "Roshan",
              style:GoogleFonts.openSans(
                fontSize: 38,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "01234589",
              style:GoogleFonts.asul(
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "roshanaswal@123",
              style:GoogleFonts.asul(
                fontSize: 18,
                fontStyle: FontStyle.normal,
              ),
            ),
            SizedBox(height: 6,),
            Text(
              "Blood Group : A+",
              style:GoogleFonts.asul(
                fontWeight: FontWeight.w500,
                fontSize: 23,
                fontStyle: FontStyle.normal,
              ),
            ),
            SizedBox(height: 34,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.call,size: 56,),
                SizedBox(width: 60),
                Icon(Icons.mail,size: 56),
                SizedBox(width: 60,),
                Icon(Icons.message,size: 56),

              ],
            )

          ],
        ),
      ),
    );
  }
}
