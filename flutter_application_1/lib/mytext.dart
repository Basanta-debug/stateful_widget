import 'package:flutter/material.dart';
import 'package:flutter_application_1/stfl.dart';

class Mytextfield extends StatefulWidget {
  const Mytextfield({Key? key}) : super(key: key);

  @override
  _MytextfieldState createState() => _MytextfieldState();
}

class _MytextfieldState extends State<Mytextfield> {
   String name='';
   String name1='';

   bool validate= false;

  //step-1
  TextEditingController mycontroller=TextEditingController();
  TextEditingController mycontroller1=TextEditingController();



  //STEP-2
  @override
  void dispose(){
    mycontroller.dispose();
    mycontroller1.dispose();
    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField retrieve'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller:mycontroller,
                decoration: InputDecoration(
                
                labelText:'First First Name',
                hintText: 'Enter your Name',
                border: OutlineInputBorder(),
                errorText:validate?"Field cannot be empty":null
              ),),
        
              SizedBox(height:20,),
              TextField(
                controller:mycontroller1,
                decoration: InputDecoration(
                
                labelText:'Last Name',
                hintText: 'Enter your Last Name',
                border: OutlineInputBorder(),
                errorText:validate?"Field cannot be empty":null
              ),),
        
        
        
        
        
        
        
              const SizedBox(height: 20,),
              
              FloatingActionButton(
          onPressed: () {
              setState(() {
        
                //step-3 Retrieving Value
                name=mycontroller.text;
                name.isEmpty ?validate=true : validate= false;

                name1=mycontroller1.text;
                name1.isEmpty ?validate=true : validate= false;
              });
          },
          child:
           Icon(Icons.add),
              ),
              Text("$name $name1",
              textScaleFactor:3,),
              
            ],
          ),
        ),
      ),

       
    );
  }
}
