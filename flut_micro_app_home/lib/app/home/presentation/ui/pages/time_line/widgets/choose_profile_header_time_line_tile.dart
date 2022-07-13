import 'package:flutter/material.dart';
import 'package:hakles_designer_system/hakles_designer_system.dart';

class ChooseProfileHeaderTimeLineTile extends StatelessWidget {
  const ChooseProfileHeaderTimeLineTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: HakColors.primaryGradient,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(42),
        ),
      ),
      height: 200,
      alignment: Alignment.bottomCenter,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(
          right: 32,
          left: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _itemProfile(context),
            _itemProfile(context),
            _itemProfile(context),
            _itemProfile(context),
            _itemProfile(context),
            _itemProfile(context),
            _itemProfile(context),
          ],
        ),
      ),
    );
  }

  Padding _itemProfile(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
      ),
      child: Stack(
        children: [
          Container(
            height: 160,
            width: 130,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          Positioned(
            top: 8,
            left: 8,
            child: HakAvatar(
              height: 35,
              width: 35,
              borderRadius: BorderRadius.circular(80),
            ),
          ),
          Positioned(
            bottom: 8,
            left: 8,
            child: Container(
              width: 130,
              child: Text(
                'Lorem ipsum dolor sit',
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      color: HakColors.white,
                    ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
