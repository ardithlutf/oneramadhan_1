import 'package:flutter/material.dart';
import 'package:oneramadhan/src/ui/widgets/home_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    /*animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });*/

    controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color.fromRGBO(58, 66, 86, 1.0)),
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.title),
          elevation: 0,
          title: Center(
            child: Text('Beranda',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w600)),
          ),
          actions: [
            IconButton(icon: Icon(Icons.notifications_none), onPressed: () {})
          ],
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              expandedHeight: 220.0,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.fromLTRB(35, 90, 0, 0),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeTransition(
                      opacity: animation,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Assalamu\'alaikum,',
                              style: TextStyle(fontFamily: 'Raleway')),
                          Text('Ardith!',
                              style: TextStyle(fontFamily: 'Raleway')),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        Text('Kamu memiliki ',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w300)),
                        Text('3 aktivitas',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold)),
                        Text(' untuk',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w300)),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text('Ramadhan',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold)),
                        Text(' tahun ini.',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w300)),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 2200,
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      HomeCard(
                          height: 220,
                          color: Color.fromRGBO(78, 107, 115, 1),
                          image: 'assets/puasa.png',
                          title: 'Fiqih Puasa',
                          progress: 'Selesai!',
                          text: 'Ingin Ramadhan-mu lebih '
                              'bermakna? Kamu bisa belajar dulu di sesi '
                              'Fiqih Puasa. Sesi ini akan membahas hukum, '
                              'waktu, dan tata cara berpuasa.',
                          valProgress: 1),
                      SizedBox(height: 15),
                      HomeCard(
                          height: 220,
                          color: Color.fromRGBO(253, 129, 129, 1),
                          image: 'assets/infaq.png',
                          title: 'Sedekah Cerdas',
                          progress: '2 dari 4 selesai',
                          text: 'Sedekah Cerdas di bulan Ramadhan penting '
                              'sekali untuk diketahui. Dengannya kamu dapat '
                              'meraup pahala sedekah yang berlimpah!',
                          valProgress: 0.5),
                      SizedBox(height: 15),
                      HomeCard(
                          height: 220,
                          color: Color.fromRGBO(142, 151, 254, 1),
                          image: 'assets/mood.png',
                          title: 'Mood Booster',
                          progress: '9 dari 15 selesai',
                          text: 'Setting Mood Booster Reminder disini!',
                          valProgress: 0.6),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
