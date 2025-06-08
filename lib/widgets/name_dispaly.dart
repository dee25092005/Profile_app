import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/profile_controller.dart';

class NameDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final name = context.watch<ProfileController>().name;

    return Text(
      name,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
