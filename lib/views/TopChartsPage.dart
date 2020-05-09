import 'package:flutter/material.dart';
import 'package:google_play_app/utils/utils.dart';

class TopChartsPage extends StatefulWidget {
  @override
  _TopChartsPageState createState() => _TopChartsPageState();
}

class _TopChartsPageState extends State<TopChartsPage> {
  bool showInstalledApps = false;
  void setShowInstalledApps(bool value) {
    setState(() {
      showInstalledApps = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Show installed apps'),
              // Expanded(child: SizedBox()),
              Switch(
                  activeTrackColor: primaryColor.withOpacity(0.2),
                  activeColor: primaryColor,
                  value: showInstalledApps,
                  onChanged: (newValue) {
                    setShowInstalledApps(newValue);
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                color: primaryColor.withOpacity(0.2),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(
                      color: primaryColor.withOpacity(0.3),
                    )),
                onPressed: () {},
                child: Text(
                  'Top Free',
                  style: TextStyle(color: primaryColor),
                ),
              ),
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(
                      color: Colors.grey,
                    )),
                onPressed: () {},
                child: Text('Top Grossing',
                    style: TextStyle(
                      color: Colors.grey,
                    )),
              ),
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(
                      color: Colors.grey,
                    )),
                onPressed: () {},
                child: Text('Trending',
                    style: TextStyle(
                      color: Colors.grey,
                    )),
              ),
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(
                      color: Colors.grey,
                    )),
                onPressed: () {},
                child: Text('Top Paid',
                    style: TextStyle(
                      color: Colors.grey,
                    )),
              )
            ],
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: ListView.builder(
                  itemCount: 50,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 20,
                          child: Text(((index) + 1).toString() + '.'),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/shadow-blood.png',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Shadow Blood',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                'Playrix',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black54,
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    '144 MB',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black54,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '3.5',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black54,
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 12,
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
