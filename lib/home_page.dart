import 'package:flutter/material.dart';
class HomeExample extends StatefulWidget {
  const HomeExample({Key? key}) : super(key: key);

  @override
  State<HomeExample> createState() => _HomeExampleState();
}

class _HomeExampleState extends State<HomeExample> {
  var titleController=TextEditingController();
  var descriptionController=TextEditingController();
  final _homeformkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 appBar: AppBar(
   title: Text("ToDo"),
 ),
      body: Form(
          key: _homeformkey ,
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              validator: (value){
                if(value == null || value.isEmpty){
                  return 'please enter title';
                }
                return null;
                  },
              decoration:InputDecoration(
                border: OutlineInputBorder(), label: Text("Title")
              ) ,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              validator: (value){
                if(value == null || value.isEmpty){
                  return 'please enter description';
                }
                return null;
              },

              decoration:InputDecoration(
                  border: OutlineInputBorder(), label: Text("Description")
              ) ,
            ),
          ),
    SizedBox(
      width: 200,
      height: 40,
      child: ElevatedButton(onPressed: () {
       setState(() {


       if(_homeformkey.currentState!.validate()){
         ScaffoldMessenger.of(context).showSnackBar(
             SnackBar (content: Text("success"))
         );
       }
       });
      }, child:Text("save") ),
    )
        ],
      )),
    );
  }
}



