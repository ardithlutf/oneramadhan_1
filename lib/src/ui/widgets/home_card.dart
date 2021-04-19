import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:oneramadhan/src/ui/ProfilePage.dart';
import 'package:oneramadhan/src/ui/fiqih.dart';
import 'package:oneramadhan/src/ui/widgets/card_image.dart';

class HomeCard extends StatefulWidget {
  final String title;
  final String progress;
  final double valProgress;
  final Color color;
  final String text;
  final double height;
  final String image;

  const HomeCard(
      {Key key,
      this.title,
      this.progress,
      this.valProgress,
      this.color,
      this.text,
      this.height,
      this.image})
      : super(key: key);

  @override
  _HomeCardState createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
    return ExpansionCard(
      margin: EdgeInsets.all(10),
      borderRadius: 20,
      background: Container(
        width: 1000,
        height: widget.height,
        decoration: new BoxDecoration(color: widget.color),
      ),
      leading: ImageCard(image: widget.image),
      title: Container(
        margin: EdgeInsets.only(left: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              widget.title,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Raleway'),
            ),
            SizedBox(height: 5),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    child: LinearProgressIndicator(
                        backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
                        value: widget.valProgress,
                        valueColor: AlwaysStoppedAnimation(Colors.yellow)),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(widget.progress,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 13))),
                )
              ],
            ),
          ],
        ),
      ),
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(widget.text,
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Raleway'),
                  textAlign: TextAlign.left),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: ButtonBar(
            alignment: MainAxisAlignment.end,
            children: [
              // ignore: deprecated_member_use
              FlatButton(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  onPressed: () {
                    if (widget.title == 'Fiqih Puasa') {
                      Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(
                              builder: (BuildContext context) => FiqihPuasa()));
                    } else {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => ProfilePage()));
                    }
                  },
                  child: Text(
                    'Lanjutkan',
                    style: TextStyle(fontSize: 14, color: widget.color),
                  )),
            ],
          ),
        )
      ],
    );
  }
}
