import 'package:flutter/material.dart';

class ProfileController extends ChangeNotifier {
  // This is a simple profile controller that manages the user's name and image path.
  String _name = "Dee";
  String get name => _name;

  String? _imagePath;
  String? get imagePath => _imagePath;

//  // Method to update the user's name
  void updateName(String newName) {
    if (newName.isNotEmpty) {
      _name = newName;
      notifyListeners();
    }
  }

//  // Method to set the image path
  void setImage(String path) {
    _imagePath = path;
    notifyListeners();
  }
}
