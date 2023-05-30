import 'package:flutter/material.dart';
import 'package:project1/Registration_example.dart';

import 'forgot_page.dart';
import 'home_page.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailConroller=TextEditingController();
  var passwordController=TextEditingController();
  final _loginformkey=GlobalKey<FormState>();
  var email='',password='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDo"),
      ),
      body: Form(
        key: _loginformkey,
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Login")),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextFormField(
              validator: (value) {
                if(value!.isEmpty){
                  return 'Please enter email id';
                }
                return null;
              },
              controller: emailConroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), label: Text("Email")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextFormField(
              validator: (value) {
                if(value!.isEmpty){
                  return 'Please enter password';
                }
                return null;
              },
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.visibility),
                  border: OutlineInputBorder(),
                  label: Text("Password")),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child:
                  TextButton(onPressed: () {


                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPage(),));

                    });
                  }, child: Text("Forgot password?")),
            ),
          ),
          SizedBox(
              width: 300,
              height: 40,
              child: ElevatedButton(onPressed: () {
                setState(() {
                  email=emailConroller.text;
                  password=passwordController.text;
                  if(_loginformkey.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content:Text("success"))
                    );
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>HomeExample(),));
                  }

                });
              }, child: Text("Login"))),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationExample(),));
                    
                  });
                  
                  
                }, child: Text("No account? Create one")),
          )
        ],
      )),
    );
  }
}
