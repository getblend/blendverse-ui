import 'package:flutter/material.dart';

//Component used to display user avatar picture
class Avatar extends StatelessWidget {
  const Avatar({Key? key, required this.imageSrc}) : super(key: key);

  ///
  final String imageSrc;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(imageSrc),
    );
  }
}
