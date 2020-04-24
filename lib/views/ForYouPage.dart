import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_play_app/models/Enums.dart';
import 'package:google_play_app/utils/utils.dart';
import 'package:google_play_app/views/AppDetail.dart';
import 'package:google_play_app/views/HomePage.dart';

class ForYouPage extends StatefulWidget {
  @override
  _ForYouPageState createState() => _ForYouPageState();
}

class _ForYouPageState extends State<ForYouPage> {
  ScrollController _scrollController = new ScrollController();
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setAppBarStatus(false);
      }
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        setAppBarStatus(true);
      }
    });
  }

  void setAppBarStatus(bool status) {
    // setState(() {
    //   _isAppBar = status;
    //   print(_isAppBar);
    // });
    homePageState.setState(() {
      homePageState.isAppBar = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      physics: ScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ForYouPageItems(
            itemName: 'Discover Recommended Games',
            itemSize: ItemSize.big,
          ),
          ForYouPageItems(
            itemName: 'Motorsports Games',
            itemSize: ItemSize.big,
          ),
          ForYouPageItems(
            itemName: 'Suggested for you',
            itemSize: ItemSize.small,
          ),
          ForYouPageItems(
            itemName: 'New & Updated Games',
            itemSize: ItemSize.small,
          ),
          ForYouPageItems(
            itemName: 'Game Spotlight',
            itemSize: ItemSize.spotlight,
          ),
          ForYouPageItems(
            itemName: 'Suggested for you',
            itemSize: ItemSize.suggestedForYou,
          ),
          ForYouPageItems(
            itemName: 'Recommended for you',
            itemSize: ItemSize.small,
          ),
          ForYouPageItems(
            itemName: 'Cartoony Games',
            itemSize: ItemSize.small,
          ),
          ForYouPageItems(
            itemName: 'Casual Games',
            itemSize: ItemSize.big,
          ),
        ],
      ),
    );
  }
}

class ForYouPageItems extends StatelessWidget {
  final String itemName;
  final ItemSize itemSize;
  const ForYouPageItems({Key key, @required this.itemName, this.itemSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: getHeight(),
      margin: EdgeInsetsDirectional.only(bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(itemName ?? ''),
                IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => CustomAppBar()));
                    })
              ],
            ),
          ),
          ItemSizeList(
            itemSize: itemSize,
          ),
        ],
      ),
    );
  }

  double getHeight() {
    switch (itemSize) {
      case ItemSize.big:
        return 260;
        break;
      case ItemSize.small:
        return 190;
        break;
      case ItemSize.spotlight:
        return 260;
        break;
      case ItemSize.suggestedForYou:
        return 260;
        break;
      default:
        return 260;
        break;
    }
  }
}

class ItemSizeList extends StatelessWidget {
  final ItemSize itemSize;
  const ItemSizeList({
    Key key,
    @required this.itemSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (itemSize) {
      case ItemSize.big:
        return BigItem();
        break;
      case ItemSize.small:
        return SmallItem();
        break;
      case ItemSize.spotlight:
        return SpotlightItem();
        break;
      case ItemSize.suggestedForYou:
        return SuggestedForYouItem();
        break;
      default:
        return BigItem();
        break;
    }
  }
}

class SmallItem extends StatelessWidget {
  const SmallItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 20,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  appDetailPageRoute(context);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[300],
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                            image: AssetImage(
                              (index % 2 == 0
                                  ? 'assets/images/brawl-stars-logo.png'
                                  : 'assets/images/csr-racing-2-logo.png'),
                            ),
                            fit: BoxFit.cover,
                            repeat: ImageRepeat.noRepeat,
                          )),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  (index % 2 == 0
                                      ? 'Shadowblood'
                                      : 'Dead Trigger 2'),
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  '35 MB',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black54,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}

class BigItem extends StatelessWidget {
  const BigItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  appDetailPageRoute(context);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
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
                                  ? 'assets/images/Call-of-Duty-Mobile-1.jpg'
                                  : 'assets/images/Call-of-Duty-Mobile.png'),
                            ),
                            fit: BoxFit.cover,
                            repeat: ImageRepeat.noRepeat,
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/Call-of-Duty-Mobile-Logo.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Call Of Duty Mobile',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  'Action . Shooter',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black54,
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '4.5',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 10,
                                      color: Colors.black54,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '1.6 GB',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black54,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}

class SpotlightItem extends StatelessWidget {
  const SpotlightItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => appDetailPageRoute(context),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
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
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/Call-of-Duty-Mobile-Logo.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: GestureDetector(
                    onTap: () => appDetailPageRoute(context),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Call Of Duty Mobile',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          'Activision Publishing Inc.',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black54,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '4.5',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black54,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 9,
                              color: Colors.black54,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 10,
                              height: 10,
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
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'PEGI 16',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black54,
                              ),
                            )
                          ],
                        ),
                        Text(
                          'Contains ads . In app purchases',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(child: SizedBox()),
                ButtonTheme(
                  minWidth: 60,
                  height: 30,
                  child: OutlineButton(
                    child: Text(
                      'Install',
                    ),
                    padding: EdgeInsets.all(1),
                    textColor: primaryColor,
                    onPressed: () => appDetailPageRoute(context),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SuggestedForYouItem extends StatelessWidget {
  const SuggestedForYouItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 300,
                    height: 200,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey[300],
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: AssetImage(
                            (index % 2 == 0
                                ? 'assets/images/Age-of-Z-Cover.jpg'
                                : 'assets/images/Age-of-Z-Cover-2.jpg'),
                          ),
                          fit: BoxFit.cover,
                          repeat: ImageRepeat.noRepeat,
                        )),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/Age-of-Z-Logo.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Age Of Z',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Camel Games Limited',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '4.3',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 9,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 10,
                                      height: 10,
                                      margin: EdgeInsets.only(
                                        right: 3,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.orange,
                                      ),
                                      child: Center(
                                        child: Text(
                                          '12',
                                          style: TextStyle(
                                            fontSize: 8,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'PEGI 12',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  'Contains ads . In app purchases',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          ButtonTheme(
                            minWidth: 60,
                            height: 30,
                            child: OutlineButton(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                              child: Text(
                                'Install',
                              ),
                              padding: EdgeInsets.all(1),
                              textColor: Colors.white,
                              onPressed: () => appDetailPageRoute(context),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              );
            }),
      ),
    );
  }
}

appDetailPageRoute(context) => Navigator.push(
    context, MaterialPageRoute(builder: (context) => AppDetail()));
