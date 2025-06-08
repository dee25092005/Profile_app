import 'package:flutter/material.dart';
import 'package:profile_p/widgets/image_picker.dart';
import 'package:provider/provider.dart';
import '../controllers/profile_controller.dart';
import '../widgets/profile_image.dart';
import '../widgets/name_input.dart';
import '../widgets/name_dispaly.dart';
import '../widgets/theme_switch.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProfileController(),
      child: Scaffold(
        appBar: AppBar(
          //backgroundColor: const Color.fromARGB(255, 133, 124, 255),
          title: Text(
            'Profile App',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              ProfileImage(),
              SizedBox(
                height: 20,
              ),
              NameDisplay(),
              SizedBox(
                height: 20,
              ),
              NameInput(),
              SizedBox(
                height: 20,
              ),
              ImagePickerButton(),
              SizedBox(
                height: 20,
              ),
              ThemeSwitch(),
            ],
          ),
        ),
      ),
    );
  }
}
