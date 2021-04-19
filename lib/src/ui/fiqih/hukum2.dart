import 'package:flutter/material.dart';
import 'package:oneramadhan/src/ui/widgets/mod_bot_sheet.dart';

class HukumPuasa2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.white,
          cardTheme: CardTheme(color: Color.fromRGBO(24, 38, 42, 0))),
      home: Scaffold(
        extendBodyBehindAppBar: true,
        body: Scaffold(
          body: Stack(children: <Widget>[
            Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("assets/fiqh_edited.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Stack(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 90, horizontal: 30),
                      child: Card(
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width / 6,
                              height: MediaQuery.of(context).size.width / 12.5,
                              child: Center(
                                child: Text(
                                  'Cara',
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.bold),
                                ),
                              ))),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 155, horizontal: 30),
                  padding: EdgeInsets.only(left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Puasa dalam Islam, terbagi atas dua bagian:',
                          style: TextStyle(
                              fontSize: 23,
                              color: Colors.white70,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Raleway'),
                          textAlign: TextAlign.left),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 225, horizontal: 40),
                  padding: EdgeInsets.only(left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ModalBottom(
                        height: 300,
                        title: 'Wajib',
                        text: '(1) Puasa Ramadhan. \n\n(2) Puasa '
                            'Kafarat \n(sebagai pengganti '
                            'pelanggaran tertentu pada waktu '
                            'berpuasa Ramadhan atau ketika sedang'
                            ' melaksanakan ibadah haji). \n\n(3) '
                            'Puasa Nazar.',
                      ),
                      SizedBox(height: 10),
                      ModalBottom(
                          height: 380,
                          title: 'Sunnah',
                          text: '(1) Puasa Enam Hari di '
                              'Bulan Syawwal \n\n(2) Puasa di Hari Arafah \n\n(3) Puasa Hari \'Asyura (10 '
                              'Muharram) \n\n(4) Puasa Ayyumul Bidh \n\n(5) Puasa Senin'
                              ' dan Kamis \n\n(6) Puasa di Bulan Sya\'ban \n\n(7) '
                              'Puasa Nabi Daud'),
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
