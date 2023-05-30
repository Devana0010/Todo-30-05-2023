import 'package:flutter/material.dart';

import 'home_page.dart';

class RegistrationExample extends StatefulWidget {
  const RegistrationExample({Key? key}) : super(key: key);

  @override
  State<RegistrationExample> createState() => _RegistrationExampleState();
}

class _RegistrationExampleState extends State<RegistrationExample> {
  var firstnamecontroller= TextEditingController();
  var lastnamecontroller=  TextEditingController();
  var emailcontroller= TextEditingController();
  var passwordcontroller=TextEditingController();
  var confirmpasswordcontroller= TextEditingController();
  final _registrationformkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ToDo"),
        ),
        body: ListView(children: [
          Form(
            key: _registrationformkey,
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text("Registration Page")),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextFormField(
                  validator: (value) {
                    if(value!.isEmpty){
                      return 'please enter firstname';
                    }
                    return null;
                  },
                  controller: firstnamecontroller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), label: Text("FirstName")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextFormField(
                  validator: (value) {
                    if(value!.isEmpty){
                      return 'please enter lastname';
                    }
                    return null;
                  },
                  controller:lastnamecontroller ,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), label: Text("LastName")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextFormField(
                  validator: (value) {
                    if(value!.isEmpty){
                      return 'please enter email';
                    }
                    return null;
                  },
                  controller:emailcontroller ,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), label: Text("Email")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextFormField(
                  validator: (value) {
                    if(value!.isEmpty){
                      return 'please enter password';
                    }
                    return null;
                  },
                  controller: passwordcontroller,
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.visibility),
                    border: OutlineInputBorder(),
                    label: Text("Password"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextFormField(
                  validator: (value) {
                    if(value!.isEmpty){
                      return 'please enter confirmpassword';
                    }
                    return null;
                  },
                  controller: confirmpasswordcontroller,
                  obscureText: true,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.visibility),
                      border: OutlineInputBorder(),
                      label: Text("Confirm Password")),
                ),
              ),
              SizedBox(
                  width: 100,
                  height: 30,
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if(_registrationformkey.currentState!.validate()){
    ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content:Text("success"))
    );
    }
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>HomeExample(),));


                        });}, child: Text("Register"))),

            ],
          )),
        ]));
  }
}
