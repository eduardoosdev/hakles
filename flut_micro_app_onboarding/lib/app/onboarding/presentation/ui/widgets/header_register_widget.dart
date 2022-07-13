import 'package:flutter/material.dart';
import 'package:hakles_designer_system/hakles_designer_system.dart';

class HeaderRegister extends StatelessWidget {
  final String title;
  final String? subtitle;

  const HeaderRegister({
    Key? key,
    required this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildLogo(),
          _buildHeader(context),
          if (subtitle != null) _buildSubHeader(context),
        ],
      ),
    );
  }

  Widget _buildLogo() {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: HakLogo(),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline5?.copyWith(
              color: HakColors.white,
            ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildSubHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Text(
        subtitle!,
        style: Theme.of(context).textTheme.subtitle2?.copyWith(
              color: HakColors.white,
            ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
