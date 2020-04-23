import 'package:flutter/material.dart';
import 'package:google_play_app/utils/utils.dart';

class AppDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () => Navigator.pop(context)),
                Expanded(child: SizedBox()),
                IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () => Navigator.pop(context)),
                IconButton(
                    icon: Icon(Icons.more_vert),
                    onPressed: () => Navigator.pop(context))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/Call-of-Duty-Mobile-Logo.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Call Of Duty : Mobile',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Activison Publishing, Inc.',
                        style: TextStyle(
                          fontSize: 12,
                          color: primaryColor,
                        ),
                      ),
                      Text(
                        'Contains ads . Inn-app purchases',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            '4.5',
                            style: smallBoldTextStyle,
                          ),
                          Icon(
                            Icons.star,
                            size: 12,
                          )
                        ],
                      ),
                      Text(
                        '8M reviews',
                        style: smallTextStyle,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 25,
                  child: VerticalDivider(
                    color: Colors.black,
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.system_update_alt,
                        size: 18,
                      ),
                      Text(
                        '1.6 GB',
                        style: smallTextStyle,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 25,
                  child: VerticalDivider(
                    color: Colors.black,
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 14,
                        height: 14,
                        margin: EdgeInsets.only(
                          right: 3,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                        ),
                        child: Center(
                          child: Text(
                            '16',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'PEGI 16',
                        style: smallTextStyle,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 25,
                  child: VerticalDivider(
                    color: Colors.black,
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        '100M+',
                        style: smallBoldTextStyle,
                      ),
                      Text(
                        'Downloads',
                        style: smallTextStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              minWidth: MediaQuery.of(context).size.width,
              color: primaryColor,
              child: Text(
                'Install',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                print('Pressed');
              },
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            height: 150,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 300,
                    height: 150,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[300],
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: AssetImage(
                            (index % 2 == 0
                                ? 'assets/images/Call-of-Duty-Mobile-Spotlight.png'
                                : 'assets/images/Call-of-Duty-Mobile-2.jpg'),
                          ),
                          fit: BoxFit.cover,
                          repeat: ImageRepeat.noRepeat,
                        )),
                  );
                }),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('About this game'),
                IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: null,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(
              'Battle Royale, Fast 5v5 & Multiplayer',
              style: smallTextStyle,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                FlatButton(
                  child: Text(
                    'Action',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: BorderSide(
                        color: Colors.grey,
                      )),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 10,
                ),
                FlatButton(
                  child: Text(
                    '#5 Top grossing',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: BorderSide(
                        color: Colors.grey,
                      )),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 10,
                ),
                FlatButton(
                  child: Text(
                    'Shooter',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: BorderSide(
                        color: Colors.grey,
                      )),
                  onPressed: () {},
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Rating & Reviews'),
                IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: null,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              children: <Widget>[
                Container(
                    child: Column(
                  children: <Widget>[
                    Text(
                      '4.5',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ],
                ))
              ],
            ),
          )
        ],
      )),
    );
  }
}
