import 'package:flut_micro_app_profile/app/profile/profile_routers.dart';
import 'package:flut_micro_commons_dependencies/main.dart';
import 'package:flutter/material.dart';
import 'package:hakles_designer_system/hakles_designer_system.dart';
import 'package:localization/localization.dart';

class BodyProfile extends StatelessWidget {
  final Widget child;

  const BodyProfile({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Column(
            children: [
              ClipPath(
                clipper: HakHeaderClipper(),
                child: Container(
                  height: 250,
                  decoration: const BoxDecoration(
                    gradient: HakColors.primaryGradient,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 56,
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              child: child,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 56,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    bottom: 0,
                    child: IconButton(
                      onPressed: () {
                        ProfileRouters.pop();
                      },
                      icon: const Icon(
                        UniconsLine.angle_left_b,
                        color: HakColors.white,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'profile-header-app-bar'.i18n(),
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(color: HakColors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
