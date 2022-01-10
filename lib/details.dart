import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:travel_blog/map_utils.dart';
import 'package:travel_blog/model/travel.dart';

class DetailPage extends StatelessWidget {
  final Travel travel;
  final double expandedHeight = 300;
  final double roundedContainerHeight = 50;

  DetailPage({required this.travel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        CustomScrollView(
          slivers: [
            _buildSilverHead(),
            SliverToBoxAdapter(
              child: _buildDetail(),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top, right: 15, left: 15),
          child: SizedBox(
            height: kToolbarHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(Icons.arrow_back, color: Colors.white)),
                Icon(Icons.menu, color: Colors.white)
              ],
            ),
          ),
        )
      ],
    ));
  }

  Widget _buildSilverHead() {
    return SliverPersistentHeader(
        delegate: DetailSliverDelegate(
            travel: travel,
            expandedHeight: expandedHeight,
            roundedContainerHeight: roundedContainerHeight));
  }

  Widget _buildDetail() {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          _buildUserInfo(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Text(
              travel.description,
              style: TextStyle(color: Colors.grey, fontSize: 16, height: 1.5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Features',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 1.5),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 180,
            child: FeatureWidget(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Reference from GOOGLE',
                  style:
                      TextStyle(color: Colors.grey, fontSize: 10, height: 1.5),
                ),
                TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    MapUtils.openMap(travel.latitude, travel.longitude);
                  },
                  child: Text(
                    'Open In Google Maps',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              travel.url,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  travel.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  travel.location,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Icon(
            Icons.share,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}

class DetailSliverDelegate extends SliverPersistentHeaderDelegate {
  final Travel travel;
  final double expandedHeight;
  final double roundedContainerHeight;

  DetailSliverDelegate({
    required this.travel,
    required this.expandedHeight,
    required this.roundedContainerHeight,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.8,
          child: Image.asset(travel.url,
              width: MediaQuery.of(context).size.width,
              height: expandedHeight,
              fit: BoxFit.cover),
        ),
        Positioned(
          top: expandedHeight - roundedContainerHeight - shrinkOffset,
          left: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: roundedContainerHeight,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
          ),
        ),
        Positioned(
            top: expandedHeight - shrinkOffset - 120,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(travel.name,
                    style: TextStyle(color: Colors.white, fontSize: 30)),
                Text(
                  travel.location,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )
              ],
            ))
      ],
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => expandedHeight;

  @override
  // TODO: implement minExtent
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class FeatureWidget extends StatelessWidget {
  final _list = Travel.generateMostPopular();
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.only(top: 20, left: 20, bottom: 10),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var travel = _list[index];
          return Container(
            height: 100,
            width: 120,
            child: Image.asset(
              travel.url,
              fit: BoxFit.cover,
            ),
          );
        },
        separatorBuilder: (_, index) => SizedBox(width: 10),
        itemCount: _list.length);
  }
}

// class GoogleMap extends StatelessWidget {
//   const GoogleMap({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Container(),
//       ),
//     );
//   }
// }
