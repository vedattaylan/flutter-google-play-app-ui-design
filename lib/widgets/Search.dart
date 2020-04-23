import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const SearchWidget({Key key, this.scaffoldKey}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: 40,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
            width: 0.1,
          ),
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[300],
                blurRadius: 1,
                spreadRadius: 1,
                offset: Offset(0, 0))
          ]),
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.dehaze),
              color: Colors.black54,
              onPressed: () {
                scaffoldKey.currentState.openDrawer();
              },
            ),
            Text(
              'Search for apps & games',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Expanded(child: SizedBox()),
            IconButton(
              icon: Icon(Icons.mic_none),
              color: Colors.black54,
              onPressed: () {
                scaffoldKey.currentState.openDrawer();
              },
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 30,
              width: 30,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/images/vedat.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
