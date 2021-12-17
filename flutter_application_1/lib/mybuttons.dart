import 'package:flutter/material.dart';

class Mybuttons extends StatefulWidget {
  const Mybuttons({ Key? key }) : super(key: key);

  @override
  _MybuttonsState createState() => _MybuttonsState();
}

class _MybuttonsState extends State<Mybuttons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("Buttons Example"),),
      body:Center(
        child: Column(children: [
           SizedBox(height:20,),
           TextButton(onPressed: (){}, child: const Text('text'),
           style: TextButton.styleFrom(
             side:BorderSide(color: Colors.blue,width: 2),
             shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(32)),
             minimumSize:Size(150, 75),
             textStyle: TextStyle(fontWeight:FontWeight.bold,
             fontSize:20),
             padding:EdgeInsets.all(10),
             primary:Colors.white,
             backgroundColor:Colors.red,
             elevation:20,
             shadowColor: Colors.blue,

           ),
           onLongPress: (){
             print('u have long pressed button');
           },
           ),
           SizedBox(height:20,),
           ElevatedButton(onPressed: (){}, child: const Text('elevated button'),
           
           ),
           ElevatedButton(onPressed: (){}, child: const Icon(Icons.wifi,size:20)),
           OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.people), label: const Text('click here',textScaleFactor:2,),)
           
            
        ],),
      )
      
    );
  }
}