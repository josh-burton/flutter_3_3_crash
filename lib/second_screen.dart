import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    CachedNetworkImageProvider(
      "",
      // crash only happens when this error listener is defined
      errorListener: () {
      },
    );
    return Container();
  }
}
