import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:oneramadhan/src/ui/ProfilePage.dart';
import 'package:oneramadhan/src/ui/absen.dart';
import 'package:oneramadhan/src/ui/home.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _index = 0;
  PageController _pageController;

  List title = ['Beranda', 'Ibadah', 'Profile'];

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color.fromRGBO(58, 66, 86, 1.0)),
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Center(
                child: SizedBox(
                  height: 2000,
                  child: PageView(
                      physics: NeverScrollableScrollPhysics(),
                      controller: _pageController,
                      children: <Widget>[
                        HomePage(),
                        AbsenPage(),
                        ProfilePage()
                      ]),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _index,
          onItemSelected: (index) {
            setState(() {
              _index = index;
            });
            _pageController.jumpToPage(index);
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                title: Text(title[_index]),
                icon: Icon(Icons.home),
                activeColor: Colors.blueGrey,
                inactiveColor: Colors.grey),
            BottomNavyBarItem(
                title: Text(title[_index]),
                icon: Icon(Icons.chrome_reader_mode),
                activeColor: Colors.blueGrey,
                inactiveColor: Colors.grey),
            BottomNavyBarItem(
                title: Text(title[_index]),
                icon: Icon(Icons.person),
                activeColor: Colors.blueGrey,
                inactiveColor: Colors.grey),
          ],
        ),
      ),
    );
  }
}
