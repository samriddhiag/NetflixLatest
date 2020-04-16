import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation',
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('NETFLIX@latest'),
        ),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.black,
      body: Column(children: [
        Container(
          child: Image(
            image: AssetImage('images/popcorn.gif'),
            height: 175.0,
            width: 170.0,
          ),
          margin: EdgeInsets.all(38),
        ),
        Container(
          padding: EdgeInsets.only(top: 20.0),
          child: Text(
            'Check out what\'s latest on netflix...just in a click !',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          width: double.infinity,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(60.0, 90.0, 60.0, 10.0),
          child: RaisedButton(
            textColor: Colors.white,
            color: Colors.red,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Center(
                  child: Text(
                    'Choose genre',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            elevation: 40,
            onPressed: () {
              navigateToSubPage(context);
            },
          ),
        ),
      ]),
    );
  }

  Future navigateToSubPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SubPage()));
  }
}

class SubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sub Page'),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Your data will be displayed shortly',
            style: TextStyle(
                 color: Colors.white),),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.red,
              child: Text('Back to Main Page'),
              onPressed: () {
                backToMainPage(context);
              },
            )
          ],
        ),
      ),
    );
  }

  void backToMainPage(context) {
    Navigator.pop(context);
  }
}