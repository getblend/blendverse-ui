library components;

import 'package:flutter/material.dart';

//Component used to display user avatar picture
class Avatar extends StatelessWidget {
  const Avatar({Key? key, this.bgImageProvider}) : super(key: key);

  final ImageProvider? bgImageProvider;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

          ///Used in-built [CircleAvatar] to clip the images into circle shape.
          ///bgImageProvider variable takes ImageProvider
          child: CircleAvatar(
        backgroundImage: bgImageProvider,
      )),
    );
  }
}
