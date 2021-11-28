import 'package:bloodbank_app/Screens/form.dart';
import 'package:bloodbank_app/Screens/profile1/profile.dart';
import 'package:bloodbank_app/Screens/profile1/profile2.dart';
import 'package:bloodbank_app/Screens/profile1/profile3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size  size = MediaQuery.of(context).size;
    return

        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  mainAxisSize:MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const <Widget>[

                              Text(
                                'Good Afternoon,',
                                style:TextStyle(
                                 fontFamily: AutofillHints.familyName,
                                  fontStyle: FontStyle.normal,

                                  fontSize: 13
                                )
                              ),
                            ],
                          ),
                          Text(
                            'Dear',

                            style:GoogleFonts.openSans(
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          Divider(thickness: 1,height: 2,),
                        ],
                      ),

                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.0),
              otherstate(),
              SizedBox(height: 10.0),
              nearme(),
              SizedBox(height: 10.0),
              nearme(),

              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormA()),
                ),
                child: Container(
                  width: 250,
                  height: 60,

                  margin: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Text(
                        
                        'Become a Donor',
                        textAlign: TextAlign.left,
                        style:GoogleFonts.openSans(
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      Text(
                        'Fill The Form',
                        textAlign: TextAlign.left,
                        style:GoogleFonts.roboto(
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                        ),
                      ),

                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),





            ],
          ),
        );

  }
}

Appbar() {
  return Scaffold(
    appBar: AppBar(),
  );
}



class otherstate extends StatelessWidget {
  const otherstate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 0.0,top: 20),
      alignment: Alignment.topLeft,
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Profile()),
        ),
        child: Text(
            ' Donor Near You',
          style:GoogleFonts.lato(
            fontSize: 30,

            fontStyle: FontStyle.normal,
          ),
        ),

      ),

    );
  }
}

class nearme extends StatelessWidget {
  const nearme({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 3,
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              ),
              child: Card(

                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  width: 180,
                  height: 170,
                  child: Column(
                    children: [
                     Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(padding: EdgeInsets.only(top: 10,left: 5.0)),
                            Image.asset(
                              "assets/imgs/photo.png",width:120,height: 80,
                              fit: BoxFit.cover,
                              alignment: Alignment.topLeft,
                            ),
                            Text("Gaurav",
                              textAlign: TextAlign.left,
                              style:GoogleFonts.openSans(
                                fontStyle: FontStyle.normal,
                                fontSize:23,
                              ),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Text("Message Now",
                                  style: GoogleFonts.openSans(
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(Icons.add_call),
                              ],
                            ),
                            Text("Blood Group : O+",
                              style: GoogleFonts.openSans(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),






                    ],
                  ),

                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile2()),
              ),
              child: Card(

                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  width: 180,
                  height: 170,
                  child: Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.only(top: 10,left: 5.0)),
                          Image.asset(
                            "assets/imgs/p2.jpeg",width:120,height: 80,
                            fit: BoxFit.cover,
                            alignment: Alignment.topLeft,
                          ),
                          Text("Roshan",
                            textAlign: TextAlign.left,
                            style:GoogleFonts.openSans(
                              fontStyle: FontStyle.normal,
                              fontSize:23,
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Text("Message Now",
                                style: GoogleFonts.openSans(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(Icons.add_call),
                            ],
                          ),
                          Text("Blood Group : A+",
                            style: GoogleFonts.openSans(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),






                    ],
                  ),

                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile3()),
              ),
              child: Card(

                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  width: 180,
                  height: 170,
                  child: Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.only(top: 10,left: 5.0)),
                          Image.asset(
                            "assets/imgs/photo.png",width:120,height: 80,
                            fit: BoxFit.cover,
                            alignment: Alignment.topLeft,
                          ),
                          Text("Aadarsh",
                            textAlign: TextAlign.left,
                            style:GoogleFonts.openSans(
                              fontStyle: FontStyle.normal,
                              fontSize:23,
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Text("Message Now",
                                style: GoogleFonts.openSans(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(Icons.add_call),
                            ],
                          ),
                          Text("Blood Group : AB+",
                            style: GoogleFonts.openSans(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),






                    ],
                  ),

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
