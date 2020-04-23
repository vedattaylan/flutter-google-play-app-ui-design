import 'package:flutter/material.dart';
import 'package:google_play_app/utils/utils.dart';
import 'package:google_play_app/views/GamesPage.dart';
import 'package:google_play_app/widgets/CustomDrawer.dart';
import 'package:google_play_app/widgets/Search.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int selectedBottomNavigationBarIndex = 0;
  List<Widget> _pages = <Widget>[
    GamesPage(),
    Text(
      'Apps',
    ),
    Text(
      'Movies',
    ),
    Text(
      'Books',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedBottomNavigationBarIndex,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        iconSize: 24,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (index) {
          setState(() {
            selectedBottomNavigationBarIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.videogame_asset,
            ),
            title: Text('Games'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.apps,
            ),
            title: Text('Apps'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie,
            ),
            title: Text('Movies'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
            ),
            title: Text('Books'),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(5),
          child: Column(
            children: <Widget>[
              SearchWidget(
                scaffoldKey: _scaffoldKey,
              ),
              _pages[selectedBottomNavigationBarIndex]
            ],
          ),
        ),
      ),
    );
  }
}
