import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context){
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Center(child: Text('NETFLIX@latest')),
        backgroundColor: Colors.red,
        ),
      backgroundColor: Colors.black,
      body:Column(
        children:[
            Container(
              child: Image(
              image: AssetImage('images/popcorn.gif'),
              height: 175.0,
              width: 170.0,
          ),
          margin:EdgeInsets.all(38),
            ),
          Container(padding:EdgeInsets.only(top:20.0),child: Text('Check out what\'s latest on netflix...just in a click !',style:TextStyle(fontWeight: FontWeight.bold,fontSize:22,color:Colors.white),textAlign:TextAlign.center,),width:double.infinity,),
          Container(
            padding: EdgeInsets.fromLTRB(60.0, 90.0, 60.0, 10.0),
            child: RaisedButton(textColor:Colors.white,color:Colors.red,child:Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Center(child: Text('Choose genre',style:TextStyle(fontWeight: FontWeight.bold,),),),
              ],
            ),elevation:40,onPressed:() =>{},),
          ),
        ]
        ),
      ));
  }
}
