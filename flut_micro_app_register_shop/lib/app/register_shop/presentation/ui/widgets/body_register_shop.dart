import 'package:flutter/material.dart';
import 'package:hakles_designer_system/hakles_designer_system.dart';

class BodyRegisterShop extends StatelessWidget {
  final String? title;
  final Widget child;

  const BodyRegisterShop({
    Key? key,
    this.title,
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
                  height: 350,
                  decoration: BoxDecoration(
                    gradient: HakColors.primaryGradient,
                  ),
                ),
              ),
            ],
          ),
          Card(
            margin: HakEdgeInsets.paddingDevice(
              context,
              top: 100,
            ),
            elevation: 6,
            child: Container(
              child: child,
              alignment: Alignment.center,
            ),
          ),
          if (title != null)
            Positioned(
              top: 50,
              right: 0,
              left: 0,
              child: Text(
                title!,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    ?.copyWith(color: HakColors.white),
              ),
            ),
        ],
      ),
    );
  }
}