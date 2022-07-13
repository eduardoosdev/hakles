import 'package:flut_micro_commons_dependencies/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hakles_designer_system/hakles_designer_system.dart';
import 'package:unicons/unicons.dart';

import 'time_line_controller.dart';
import 'widgets/choose_profile_header_time_line_tile.dart';
import 'widgets/item_post_tile.dart';

class TimeLinePage extends StatefulWidget {
  @override
  _TimeLinePageState createState() => _TimeLinePageState();
}

class _TimeLinePageState
    extends ModularState<TimeLinePage, TimeLineController> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        key: scaffoldKey,
        appBar: HakAppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(UniconsLine.search),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(UniconsLine.list_ul),
            ),
          ],
          bottom: Container(
            decoration: BoxDecoration(
              gradient: HakColors.primaryGradient,
            ),
            child: TabBar(
              tabs: [
                Tab(text: 'home_timeline_tab_1'.i18n()),
                Tab(text: 'home_timeline_tab_2'.i18n()),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              padding: EdgeInsets.only(bottom: 88.0),
              children: [
                ChooseProfileHeaderTimeLineTile(),
                ItemPostTile(),
                ItemPostTile(),
                ItemPostTile(),
                ItemPostTile(),
                ItemPostTile(),
                ItemPostTile(),
                ItemPostTile(),
                ItemPostTile(),
                ItemPostTile(),
                ItemPostTile(),
                ItemPostTile(),
                ItemPostTile(),
              ],
            ),
            ListView(
              padding: EdgeInsets.only(bottom: 88.0),
              children: [
                ChooseProfileHeaderTimeLineTile(),
                ItemPostTile(),
                ItemPostTile(),
                ItemPostTile(),
                ItemPostTile(),
                ItemPostTile(),
                ItemPostTile(),
                ItemPostTile(),
                ItemPostTile(),
                ItemPostTile(),
                ItemPostTile(),
                ItemPostTile(),
                ItemPostTile(),
                ItemPostTile(),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          enableFeedback: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                UniconsLine.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                UniconsLine.store,
              ),
              label: 'Loja',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                UniconsLine.user,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
