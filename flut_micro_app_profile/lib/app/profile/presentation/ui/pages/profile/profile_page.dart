import 'package:flut_micro_app_profile/app/profile/presentation/ui/pages/widgets/body_profile.dart';
import 'package:flut_micro_app_profile/app/profile/profile_routers.dart';
import 'package:flut_micro_commons_dependencies/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hakles_designer_system/hakles_designer_system.dart';

import 'profile_controller.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends ModularState<ProfilePage, ProfileController> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: BodyProfile(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  margin: HakEdgeInsets.paddingDevice(context, top: 0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        child: Column(
                          children: [
                            IconButton(
                              icon: const Icon(UniconsLine.user_plus),
                              onPressed: () {
                                HakSnackbar.info(
                                  context: context,
                                  message: 'TODO falta implementar',
                                  scaffoldKey: scaffoldKey,
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: Column(
                          children: [
                            IconButton(
                              icon: const Icon(UniconsLine.setting),
                              onPressed: () {
                                HakBottomSheet.showList(
                                  context: context,
                                  items: [
                                    ListTile(
                                      leading: const Icon(UniconsLine.setting),
                                      title: const Text('Configurações'),
                                      onTap: () {},
                                    ),
                                    ListTile(
                                      leading: const Icon(UniconsLine.heart),
                                      title: const Text('Favoritos'),
                                      onTap: () {},
                                    ),
                                    ListTile(
                                      leading:
                                          const Icon(UniconsLine.clock_five),
                                      title: const Text('Suas atividade'),
                                      onTap: () {},
                                    ),
                                    ListTile(
                                      leading: const Icon(UniconsLine.bookmark),
                                      title: const Text('Salvos'),
                                      onTap: () {},
                                    ),
                                    ListTile(
                                      leading: const Icon(
                                        UniconsLine.signout,
                                        color: HakColors.error,
                                      ),
                                      title: const Text('Deslogar'),
                                      onTap: () async {
                                        ProfileRouters.pop();
                                        await controller.logoutUsecase();
                                        ProfileRouters.pop();
                                      },
                                    ),
                                  ],
                                );
                              },
                            ),
                            IconButton(
                              icon: const Icon(UniconsLine.comment),
                              onPressed: () {
                                HakSnackbar.info(
                                  context: context,
                                  message: 'TODO falta implementar',
                                  scaffoldKey: scaffoldKey,
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(height: 16),
                              Observer(
                                builder: (_) {
                                  return HakAvatar(
                                    width: 80,
                                    height: 80,
                                    imageUrl:
                                        controller.currentUser?.image.value ??
                                            '',
                                    placeHolderInitiais: controller
                                        .currentUser?.displayName.value
                                        .toString()
                                        .substring(0, 1),
                                  );
                                },
                              ),
                              const SizedBox(height: 16),
                              Observer(
                                builder: (_) {
                                  return Text(
                                    controller.currentUser?.displayName.value ??
                                        '',
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  );
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 16.0,
                                  bottom: 16.0,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          '456',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                        ),
                                        const Text(
                                          'Posts',
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          '456',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                        ),
                                        const Text(
                                          'Posts',
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          '456',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                        ),
                                        const Text(
                                          'Posts',
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  color: Colors.white,
                ),
              ),
              Card(
                child: Container(
                  width: 300,
                  height: 300,
                  color: Colors.amber,
                ),
              ),
              Card(
                child: Container(
                  width: 300,
                  height: 300,
                  color: Colors.amber,
                ),
              ),
              Card(
                child: Container(
                  width: 300,
                  height: 300,
                  color: Colors.amber,
                ),
              ),
              Card(
                child: Container(
                  width: 300,
                  height: 300,
                  color: Colors.amber,
                ),
              ),
              Card(
                child: Container(
                  width: 300,
                  height: 300,
                  color: Colors.amber,
                ),
              ),
              Card(
                child: Container(
                  width: 300,
                  height: 300,
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
