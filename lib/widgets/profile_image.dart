import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/profile_controller.dart';
import 'dart:io';

class ProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imagePath = context.watch<ProfileController>().imagePath;

    return CircleAvatar(
      radius: 50,
      backgroundImage: imagePath != null && imagePath.isNotEmpty
          ? FileImage(File(imagePath))
          : AssetImage('lib/assets/dee4.png') as ImageProvider,
    );
  }
}
