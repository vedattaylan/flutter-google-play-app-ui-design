import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_play_app/models/Enums.dart';
import 'package:google_play_app/utils/utils.dart';
import 'package:google_play_app/views/games/ForYouPage.dart';

class AppDetail extends StatefulWidget {
  @override
  _AppDetailState createState() => _AppDetailState();
}

class _AppDetailState extends State<AppDetail>
    with SingleTickerProviderStateMixin {
  ScrollController scrollController = new ScrollController();
  bool headerBarShow = true;
  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setHeaderBarShow(false);
      }
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        setHeaderBarShow(true);
      }
    });
  }

  void setHeaderBarShow(bool status) {
    setState(() {
      headerBarShow = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
              child: AnimatedContainer(
                duration: Duration(
                  milliseconds: 200,
                ),
                height: headerBarShow ? 50.0 : 0.0,
                child: headerBarShow
                    ? Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                                icon: Icon(Icons.arrow_back),
                                onPressed: () => Navigator.pop(context)),
                            Expanded(child: SizedBox()),
                            IconButton(
                                icon: Icon(Icons.search), onPressed: null),
                            IconButton(
                                icon: Icon(Icons.more_vert), onPressed: null)
                          ],
                        ),
                      )
                    : Container(),
              ),
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  controller: scrollController,
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      '4.5',
                                      style: TextStyle(
                                        fontSize: 40,
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            Icons.star,
                                            color: primaryColor,
                                            size: 12,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: primaryColor,
                                            size: 12,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: primaryColor,
                                            size: 12,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: primaryColor,
                                            size: 12,
                                          ),
                                          Icon(
                                            Icons.star_half,
                                            color: primaryColor,
                                            size: 12,
                                          )
                                        ],
                                      ),
                                    ),
                                    Text(
                                      '8.218.936',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black54,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 66,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      '5',
                                      style: smallTextStyle,
                                    ),
                                    Text(
                                      '4',
                                      style: smallTextStyle,
                                    ),
                                    Text(
                                      '3',
                                      style: smallTextStyle,
                                    ),
                                    Text(
                                      '2',
                                      style: smallTextStyle,
                                    ),
                                    Text(
                                      '1',
                                      style: smallTextStyle,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                height: 65,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    HorizontalStick(
                                      value: 120,
                                    ),
                                    HorizontalStick(
                                      value: 20,
                                    ),
                                    HorizontalStick(
                                      value: 10,
                                    ),
                                    HorizontalStick(
                                      value: 10,
                                    ),
                                    HorizontalStick(
                                      value: 10,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Game Play 2.1',
                                style: smallTextStyle,
                              ),
                              Text(
                                'Controls 2.0',
                                style: smallTextStyle,
                              ),
                              Text(
                                'Graphics 2.1',
                                style: smallTextStyle,
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 20,
                          ),
                          child: Column(
                            children: <Widget>[
                              AppComments(),
                              AppComments(),
                              AppComments(),
                              AppComments(),
                              AppComments(),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 20,
                          ),
                          child: ExpansionTile(
                            title: Text('Developer contact'),
                            children: <Widget>[
                              ListTile(
                                title: Text('Website'),
                                leading: Icon(Icons.vpn_lock),
                              ),
                              ListTile(
                                title: Text('Email'),
                                leading: Icon(Icons.email),
                                subtitle: Text('vdattaylan@gmail.com'),
                              ),
                              ListTile(
                                title: Text('Address'),
                                leading: Icon(Icons.pin_drop),
                                subtitle: Text(
                                    'Ivedik OSB Mahallesi - Teknopark ANKARA'),
                              ),
                              ListTile(
                                title: Text('Privacy policy'),
                                leading: Icon(Icons.security),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: <Widget>[
                              ForYouPageItems(
                                itemName: 'New & Updated games',
                                itemSize: ItemSize.small,
                              ),
                              ForYouPageItems(
                                itemName: 'Related to this app',
                                itemSize: ItemSize.small,
                              ),
                              ForYouPageItems(
                                itemName: 'You might also like',
                                itemSize: ItemSize.small,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class AppComments extends StatelessWidget {
  const AppComments({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                    image: AssetImage('assets/images/vedat.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Text(
                  'Vedat TAYLAN',
                  style: smallBoldTextStyle,
                ),
              ),
              IconButton(icon: Icon(Icons.more_vert), onPressed: null),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: primaryColor,
                      size: 12,
                    ),
                    Icon(
                      Icons.star,
                      color: primaryColor,
                      size: 12,
                    ),
                    Icon(
                      Icons.star,
                      color: primaryColor,
                      size: 12,
                    ),
                    Icon(
                      Icons.star,
                      color: primaryColor,
                      size: 12,
                    ),
                    Icon(
                      Icons.star_half,
                      color: primaryColor,
                      size: 12,
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '4/19/20',
                  style: smallBoldTextStyle,
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
                text:
                    'Hello The RichText widget displays text that uses multiple different styles. The text to display is described using a tree of TextSpan objects, each of which has an associated style that is used for that subtree. The text might break across multiple lines or might all be displayed on the same line depending on the layout constraints.',
                style: smallBoldTextStyle),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            child: Row(
              children: <Widget>[
                Text(
                  'Was this review helpful?',
                  style: smallTextStyle,
                ),
                Expanded(
                  child: SizedBox(),
                ),
                FlatButton(
                  child: Text(
                    'Yes',
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
                    'No',
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
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HorizontalStick extends StatelessWidget {
  final double value;
  const HorizontalStick({
    Key key,
    @required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: 150,
      height: 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.black26,
      ),
      child: Container(
        width: value,
        height: 8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: primaryColor,
        ),
      ),
    );
  }
}
