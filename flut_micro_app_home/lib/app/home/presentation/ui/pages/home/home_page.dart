import 'package:flut_micro_app_home/app/home/presentation/ui/pages/time_line/widgets/choose_profile_header_time_line_tile.dart';
import 'package:flut_micro_app_home/app/home/presentation/ui/pages/time_line/widgets/item_post_tile.dart';
import 'package:flut_micro_app_home/home_routers.dart';
import 'package:flut_micro_commons_dependencies/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hakles_designer_system/hakles_designer_system.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    controller.loggedUser();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        key: scaffoldKey,
        appBar: HakAppBar(
          leading: Observer(
            builder: (_) {
              if (controller.currentUser == null) {
                return Container();
              }
              return Padding(
                padding: const EdgeInsets.only(left: 16),
                child: GestureDetector(
                  child: HakAvatar(
                    height: 40,
                    width: 40,
                    borderRadius: BorderRadius.circular(80),
                    imageUrl: controller.currentUser?.image.value ?? '',
                    placeHolderInitiais: controller
                        .currentUser?.displayName.value
                        .toString()
                        .substring(0, 1),
                  ),
                  onTap: () async {
                    await HomeRouters.goToProfile();
                    controller.loggedUser();
                  },
                ),
              );
            },
          ),
          actions: [
            IconButton(
              icon: Icon(UniconsLine.search),
              onPressed: () async {
                if (controller.currentUser == null) {
                  await HomeRouters.goToLogin();
                  controller.loggedUser();
                }
              },
            ),
            SizedBox(
              width: 8,
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
        bottomNavigationBar: Observer(
          builder: (_) {
            if (controller.currentUser == null) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(),
                ],
              );
            }
            return BottomNavigationBar(
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
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            );
          },
        ),
      ),
    );
  }
}
