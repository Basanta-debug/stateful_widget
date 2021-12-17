import 'package:flutter/material.dart';

class StflExample extends StatefulWidget {
  const StflExample({ Key? key }) : super(key: key);

  @override
  _StflExampleState createState() => _StflExampleState();
}

class _StflExampleState extends State<StflExample> {
  String name='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          
          child: Column(children: [
            
            TextField(
              // keyboardType: TextInputType.phone,
              onChanged:(value){
                setState(() {
                  name=value;
                });
                
                print('Entred name is $name');

              },
              maxLines: 1,
              autocorrect: true,
              style: TextStyle(fontSize:20, fontWeight:FontWeight.bold),
              decoration: InputDecoration(
                labelText: "Name",
                hintText: 'Enter your Name',
                icon: Icon(Icons.people),
                border:OutlineInputBorder(),
              ),
            ),
            Text('Your name is $name',
            style: TextStyle(
              fontSize:20,
              fontWeight: FontWeight.bold,
            ),),
          
             SizedBox(height: 20,
             ),
            TextField(
              obscureText:true,
            
              maxLength:4,
              style: TextStyle(fontSize:20, fontWeight:FontWeight.bold),
              decoration: InputDecoration(

                labelText: "Password",
                hintText: 'Enter your psw',
                icon: Icon(Icons.password),
                border:OutlineInputBorder(),
              ),
            ),
          ],),
        ),
      ),
      
    );
  }
}