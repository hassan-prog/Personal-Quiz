import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget{

  _buttonPressed(){
    print("Button Pressed!");
  }
  

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        actions: <Widget>[
          IconButton(onPressed: () => debugPrint("button Pressed!"), icon: Icon(Icons.wallpaper)),
          IconButton(icon: Icon(Icons.warning), onPressed: _buttonPressed),
        ]),
        

        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: <Widget>[
              InkWell(
                child: Text("pressed...",
                style: TextStyle(fontSize: 24.5),),
                onTap: () => debugPrint("tapped..."),
                ),
            ]
              )             
          )
        );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return Material(
      color: Colors.deepOrange,
      child: Center(
        child: Text("Hello flutter",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 30.4,
          fontStyle: FontStyle.normal,
        ),
        
        
        )
        
        ),

    );
  }
  
}