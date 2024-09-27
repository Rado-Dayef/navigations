import 'package:flutter/material.dart';
import 'package:test_navigations/models/models/user_model.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    UserModel userData = ModalRoute.of(context)!.settings.arguments as UserModel;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text(userData.name),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            userData.gender,
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
