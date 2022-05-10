import 'package:flutter/material.dart';

//Component used to display user avatar picture
class Avatar extends StatelessWidget {
  const Avatar({Key? key, required this.imageSrc}) : super(key: key);

  /// The URL of the image from where to fetch the data.
  ///
  /// The arguments [imageSrc] must not be null.
  final String imageSrc;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      foregroundColor: Colors.blue,
      backgroundColor: Colors.white,
      foregroundImage: NetworkImage(imageSrc),
      radius: 42,
    );
  }
}
