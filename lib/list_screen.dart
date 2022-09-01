import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return CachedNetworkImage(
                      // for some reason the crash only occurs if this is a URL that returns 404
                      imageUrl: 'https://flutter.dev/myawesomeimage.png',
                      useOldImageOnUrlChange: true,
                      fit: BoxFit.cover,
                      height: 100,
                      width: 100,
                    );
                  },
                  childCount: 5,
                ),
              ),
        ],
      ),
    );
  }
}
