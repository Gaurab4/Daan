import 'package:flutter/material.dart';
class FormA extends StatefulWidget {
  const FormA({Key? key}) : super(key: key);

  @override
  State<FormA> createState() => _FormAState();

}

class _FormAState extends State<FormA> {
  late TextEditingController _nameController , _numberController , _addressController , _bloodgroupController ;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameController = TextEditingController();
    _numberController = TextEditingController();
    _addressController = TextEditingController();
    _bloodgroupController = TextEditingController();


  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:  Scaffold(
        appBar: AppBar(),
            body:  Container(
              margin: EdgeInsets.all(15),
              child:  Column(
                children: [
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      hintText: "Enter Name",
                      prefixIcon: Icon(Icons.account_circle,size: 30,),
                      fillColor: Colors.white,
                      filled: true,

                      contentPadding: EdgeInsets.all(15)
                    ),
                  ),
                  SizedBox(height: 15.0),
                  TextFormField(
                    controller: _numberController,
                    decoration: InputDecoration(
                        hintText: "Enter Number",
                        prefixIcon: Icon(Icons.phone_iphone,size: 30,),
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: EdgeInsets.all(15)
                    ),
                  ),
                  SizedBox(height: 15.0),
                  TextFormField(
                    controller: _addressController,
                    decoration: InputDecoration(
                        hintText: "Enter Address",
                        prefixIcon: Icon(Icons.add_location,size: 30,),
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: EdgeInsets.all(15)
                    ),
                  ),
                  SizedBox(height: 15.0),
                  TextFormField(
                    controller: _bloodgroupController,
                    decoration: InputDecoration(
                        hintText: "Enter Blood Group",
                        prefixIcon: Icon(Icons.add,size: 30,),
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: EdgeInsets.all(15)
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    width:double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: RaisedButton(
                    onPressed: () {
                      //saveContact();
                    },
                    child: Text(
                      "Save details",
                      style: TextStyle(
                      fontSize: 20,
                      color:Colors.green,
                      fontWeight:FontWeight.w600
                    ),
                    ),),
                  )
                ],
              ),
            ),
         ),
    );
  }
  void saveContact(){
    String name = _nameController.text;
    String number = _numberController.text;
    String address = _addressController.text;
    String bloodgroup = _bloodgroupController.text;

    Map<String,String> contact={
      "name" : name,
      "number":number,
      "address":address,
      "bloodgroup":bloodgroup
    };

  }
}




