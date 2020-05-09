import 'package:flutter/material.dart';
import 'package:google_play_app/models/TabPageModel.dart';
import 'package:google_play_app/utils/utils.dart';
import 'package:google_play_app/views/ComingSoonPage.dart';
import 'package:google_play_app/views/TopChartsPage.dart';

import 'apps/ForYouPage.dart';

class AppsPage extends StatefulWidget {
  @override
  _AppsPageState createState() => _AppsPageState();
}

class _AppsPageState extends State<AppsPage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  final List<TabPageModel> _tabPageModels = [
    TabPageModel(
      tabText: 'For you',
      tabPageWidget: ForYouPage(),
    ),
    TabPageModel(
      tabText: 'Top charts',
      tabPageWidget: TopChartsPage(),
    ),
    TabPageModel(
      tabText: 'Event',
      tabPageWidget: ComingSoonPage(),
    ),
    TabPageModel(
      tabText: 'Premium',
      tabPageWidget: ComingSoonPage(),
    ),
    TabPageModel(
      tabText: 'Categories',
      tabPageWidget: ComingSoonPage(),
    )
  ];
  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              child: TabBar(
                controller: _controller,
                indicatorColor: primaryColor,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: primaryColor,
                unselectedLabelColor: Colors.black45,
                labelStyle: TextStyle(fontSize: 16),
                indicatorPadding: EdgeInsets.zero,
                tabs: _tabPageModels
                    .map(
                      (item) => Tab(
                        text: item.tabText,
                      ),
                    )
                    .toList(),
              ),
            ),
            Divider(
              height: 1,
              thickness: 1,
            ),
            Expanded(
              child: TabBarView(
                controller: _controller,
                children:
                    _tabPageModels.map((item) => item.tabPageWidget).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
