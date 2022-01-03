import 'package:travel_blog/widgets/most_popular.dart';
import 'package:travel_blog/widgets/travel_blog.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Travel Blog',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Expanded(
            flex: 2,
            child: TravelBlog(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Common Places',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'More',
                  style: TextStyle(fontSize: 16, color: Colors.orange),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: MostPopular(),
          )
        ],
      ),
    );
  }
}
