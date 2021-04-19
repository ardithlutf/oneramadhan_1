import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:oneramadhan/src/ui/fiqih/hukum.dart';
import 'package:oneramadhan/src/ui/fiqih/hukum2.dart';
import 'package:page_slider/page_slider.dart';

class FiqihPuasa extends StatefulWidget {
  @override
  _FiqihPuasaState createState() => _FiqihPuasaState();
}

class _FiqihPuasaState extends State<FiqihPuasa> {
  GlobalKey<PageSliderState> _slider = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.white,
          cardTheme: CardTheme(color: Color.fromRGBO(24, 38, 42, 0))),
      home: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
                icon: Icon(Icons.home, color: Colors.white60),
                onPressed: () {
                  Navigator.pop(context);
                }),
            title: Center(
              child: Text('Fiqih Puasa',
                  style: TextStyle(
                      color: Colors.white60, fontWeight: FontWeight.w600)),
            ),
            actions: [
              IconButton(
                  icon: Icon(Icons.share, color: Colors.white60),
                  onPressed: () {})
            ],
          ),
          body: Center(
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: new AssetImage("assets/fiqh_edited.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                PageSlider(
                  key: _slider,
                  duration: Duration(milliseconds: 400),
                  pages: <Widget>[
                    HukumPuasa(),
                    HukumPuasa2(),
                  ],
                ),
                buildNavigateButton(),

              ],
            ),
          )),
    );
  }

  buildNavigateButton() {
    if(_slider.currentWidget == HukumPuasa()){
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 90, horizontal:
            0),
            child: FloatingActionButton(
                elevation: 0,
                mini: true,
                child: Icon(
                  Icons.navigate_before,
                  color: Colors.white70,
                ),
                backgroundColor: Color.fromRGBO(55, 77, 83, 1),
                onPressed: () => _slider.currentState.previous()),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 90, horizontal: 30),
            child: FloatingActionButton(
                elevation: 0,
                mini: true,
                child: Icon(
                  Icons.navigate_next,
                  color: Colors.white70,
                ),
                backgroundColor: Color.fromRGBO(55, 77, 83, 1),
                onPressed: () => _slider.currentState.next()),
          ),
        ],
      );
    }else{
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 90, horizontal: 30),
            child: FloatingActionButton(
                elevation: 0,
                mini: true,
                child: Icon(
                  Icons.navigate_next,
                  color: Colors.white70,
                ),
                backgroundColor: Color.fromRGBO(55, 77, 83, 1),
                onPressed: () => _slider.currentState.next()),
          ),
        ],
      );
    }
  }
}
