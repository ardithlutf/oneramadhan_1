import 'package:flutter/material.dart';

class ModalBottom extends StatelessWidget {
  final String title;
  final String text;
  final double height;

  const ModalBottom({Key key, this.title, this.text, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      color: Colors.blueGrey,
      child: ListTile(
        title: Text(title,
            style: TextStyle(
                fontSize: 20,
                color: Colors.white70,
                fontWeight: FontWeight.w400,
                fontFamily: 'Raleway'),
            textAlign: TextAlign.left),
        trailing: Icon(Icons.navigate_next, color: Colors.white70),
        onTap: () {
          showModalBottomSheet(
              backgroundColor: Colors.transparent,
              context: context,
              builder: (BuildContext builder) {
                return Container(
                  height: height,
                  color: Colors.transparent,
                  child: Container(
                    decoration: new BoxDecoration(
                        color: Colors.white70,
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(40.0),
                          topRight: const Radius.circular(40.0),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(30),
                          child: Text(
                            text,
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Center(
                          child: ElevatedButton(
                            child: const Text('Tutup'),
                            onPressed: () => Navigator.pop(context),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
