import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

/*Future<void> getData() async{
  http.Response response = await http.get('https://api.themoviedb.org/3/trending/all/day?api_key=20b834e0018fd3eb0df039af89cae528');
  if(response.statusCode == 200){
  print(response.body);  
  }
  else{
    print(response.statusCode);
  }
}*/


class _MyAppState extends State<MyApp> {
  int _currentIndex=0;
  final tabs =[
    Center(child: Column(children: [
        Center(
          child: Container(
            child: Image(
              image: AssetImage('images/appback.jpg'),
              height: 305.0,
              width: 330.0,
            ),
            margin: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 10.0),
          ),
        ),
        SizedBox(
          height: 20.0,
          width: 180.0,
          child:Divider(
            color: Color.fromARGB(255, 73, 133, 253),
          ),
        ),
         Container(
           height: 38.0,
           child: Row(
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[
     RotateAnimatedTextKit(
      onTap: () {
        print('Movies,Genres,Trending...');
      },
      text: ['MOVIES', 'GENRES', 'TRENDING'],
      textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 29.0, fontFamily: 'BungeeInline',color: Color.fromARGB(255, 140, 243, 172),),
      textAlign: TextAlign.start,
      alignment: AlignmentDirectional.bottomCenter,
      duration: Duration(milliseconds: 1000),
      totalRepeatCount: 100,
      displayFullTextOnTap: true,
    ),
  ],
),
         ),
        Column(
          children: <Widget>[
            Container(
              child: Text(
                'We got it all covered !',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontFamily: 'BungeeInline',fontSize: 26, color: Color.fromARGB(255, 140, 243, 172),),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ]),),
        Center(
          child: ListView.builder(
            itemBuilder: (context,index){
            return Card(
              //color:
              child:Padding(
                padding: const EdgeInsets.fromLTRB(18.0, 36.0, 18.0, 36.0),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                Text('Title',style: TextStyle(fontSize:22,fontWeight:FontWeight.bold,),),
                Text('Dir',style:TextStyle(color:Colors.grey)),
              ],),),
            );
          },
          itemCount: 8,
          ),
        ),
      Center(child: ListView.builder(
        itemBuilder: (context,index){
        return Card(
          child:Padding(
            padding: const EdgeInsets.fromLTRB(18.0, 36.0, 18.0, 36.0),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
            Text('Genre',style: TextStyle(fontSize:22,fontWeight:FontWeight.bold,),),
            Text('Plot',style:TextStyle(color:Colors.grey)),
          ],),),
        );
      },
      itemCount: 8,
      ),
      ),
      Center(child: ListView.builder(
        itemBuilder: (context,index){
        return Card(
          child:Padding(
            padding: const EdgeInsets.fromLTRB(18.0, 36.0, 18.0, 36.0),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
            Text('Rated',style: TextStyle(fontSize:22,fontWeight:FontWeight.bold,),),
            Text('Year rel',style:TextStyle(color:Colors.grey)),
          ],),),
        );
      },
      itemCount: 8,
      ),
      ),
  ];
  @override
  Widget build(BuildContext context) {
   // getData();Color.fromARGB(255, 31, 119, 165)Color.fromARGB(255, 67, 129, 250
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Bingeiac',style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold ,color: Colors.black,fontFamily: 'BungeeInline'),),
        ),
        backgroundColor: Color.fromARGB(255, 254, 110, 84),
      ),
      backgroundColor: Colors.black,
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        //backgroundColor: Color.fromARGB(255, 31, 119, 165),
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color:Colors.white),
            title: Text('Home',style:TextStyle(color:Colors.white),)
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.movie_filter,color:Colors.white,),
            title: Text('Movies',style:TextStyle(color:Colors.white),)
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.dns,color:Colors.white),
            title: Text('Genres',style:TextStyle(color:Colors.white),)
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.trending_up,color:Colors.white,),
            title: Text('Trending',style:TextStyle(color:Colors.white),)
            ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        ),
    ),
    );
  }
}