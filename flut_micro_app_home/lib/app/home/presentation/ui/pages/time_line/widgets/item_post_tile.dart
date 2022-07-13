import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hakles_designer_system/hakles_designer_system.dart';
import 'package:like_button/like_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:unicons/unicons.dart';

class ItemPostTile extends StatefulWidget {
  static const double width = 40.0;
  static const double height = 40.0;
  const ItemPostTile({Key? key}) : super(key: key);

  @override
  _ItemPostTileState createState() => _ItemPostTileState();
}

class _ItemPostTileState extends State<ItemPostTile> {
  int indexPagePost = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: HakAvatar(
              width: 35,
              height: 35,
              borderRadius: BorderRadius.circular(80),
              placeHolderInitiais: 'A',
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(UniconsLine.ellipsis_h),
            ),
            title: Text('Cauã Sampaio'),
            subtitle: Row(
              children: [
                Text('20 Minutes atrás'),
              ],
            ),
          ),
          CarouselSlider.builder(
            itemCount: 10,
            itemBuilder: (
              BuildContext context,
              int itemIndex,
              int pageViewIndex,
            ) {
              return HakImageLikeButton(
                onChanged: () {},
                child: HakNetworkImage(
                  imageUrl:
                      'https://noticias.buscavoluntaria.com.br/wp-content/uploads/2019/03/@guismu13.png',
                  progressWidget: Container(
                    alignment: Alignment.center,
                    color: Colors.grey[100],
                  ),
                  alignment: Alignment.center,
                ),
              );
            },
            options: CarouselOptions(
              height: 350.0,
              enableInfiniteScroll: false,
              viewportFraction: 1,
              onPageChanged: (int index, CarouselPageChangedReason reason) {
                setState(() {
                  indexPagePost = index;
                });
              },
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      LikeButton(
                        isLiked: false,
                        onTap: (bool isLiked) async {
                          return !isLiked;
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: AnimatedSmoothIndicator(
                  count: 10,
                  activeIndex: indexPagePost,
                  effect: ScrollingDotsEffect(
                    dotHeight: 5,
                    dotWidth: 5,
                    fixedCenter: true,
                    activeDotColor: Theme.of(context).primaryColor,
                  ), // your preferred effect
                  onDotClicked: (index) {},
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(UniconsLine.comment),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(UniconsLine.message),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: HakEdgeInsets.paddingDevice(
              context,
              top: 0,
              bottom: 0,
            ),
            child: Text(
              'Curdido por 10,098',
              style: Theme.of(context).textTheme.caption?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: HakEdgeInsets.paddingDevice(
              context,
              top: 8,
              bottom: 8,
            ),
            child: Text(
              'Ver todos os 1.767 comentários',
              style: Theme.of(context).textTheme.caption,
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: HakEdgeInsets.paddingDevice(
              context,
              bottom: 0,
              top: 0,
            ),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus scelerisque quam sed velit viverra dignissim.',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
        ],
      ),
    );
  }
}
