import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/profile_controller.dart';

class NameInput extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _controller,
          decoration: InputDecoration(
            labelText: "enter your name",
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () {
              final provider = context.read<ProfileController>();
              provider.updateName(_controller.text);
              _controller.clear();
            },
            child: Text("update name")),
      ],
    );
  }
}
