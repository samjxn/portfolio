import 'package:flutter/material.dart';

enum ProfilePictureLayout {
  horizontal,
  vertical,
}

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FlutterLogo();
  }
}
