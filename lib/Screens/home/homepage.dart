import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bloodbank_app/screens/home/component/body.dart';


class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),

    );
  }

  AppBar buildAppBar() {
    return AppBar(

      title: Center(
        child: Title(color: Colors.white, child: Text("Daan",style: TextStyle(
          fontSize: 23
        ),)),
      ),
    );
  }
}





