import 'package:flutter/material.dart';
import 'package:flutter_application_1/stfl.dart';

class Addingnum extends StatefulWidget {
  const Addingnum({ Key? key }) : super(key: key);

  @override
  _AddingnumState createState() => _AddingnumState();
}

class _AddingnumState extends State<Addingnum> {



  String name='';
   String name1='';

   bool validate= false;
   bool validate1= false;

  //step-1
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
   String result ='0';


 //STEP-2
  @override
  void dispose(){
    num1.dispose();
    num2.dispose();
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
                keyboardType: TextInputType.number,
                controller:num1,
                decoration: InputDecoration(
                
                labelText:'First Number',
                hintText: 'Enter your 1st Num',
                border: OutlineInputBorder(),
                errorText:validate?"Field cannot be empty":null,

              ),),
        
              SizedBox(height:20,),
              TextField(
                keyboardType: TextInputType.number,
                controller:num2,
                decoration: InputDecoration(
                
                labelText:'Last Num',
                hintText: 'Enter your Last Number',
                border: OutlineInputBorder(),
                errorText:validate1?"Field cannot be empty":null
              ),),
        
        
        
              const SizedBox(height: 20,),
              
              ElevatedButton(
         onPressed: (){
                setState((){
                  
                  name=num1.text;
                  name1=num2.text;
                  name.isEmpty ?validate=true : validate= false;
                  name1.isEmpty ?validate1=true : validate1= false;

                  if(name.isNotEmpty && name1.isNotEmpty){
                      int sum = int.parse(num1.text) + int.parse(num2.text);
                  result = sum.toString();

                  }
                  else{
                    result='';
                  }
                  
                });
              },
          child:
           Icon(Icons.add),
              ),
              Text(result,
              textScaleFactor:3,),
              
            ],
          ),
        ),
      ),

       
    );
  }
}