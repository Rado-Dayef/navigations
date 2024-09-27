import 'package:flutter/material.dart';
import 'package:test_navigations/models/models/user_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<UserModel> usersList = ModalRoute.of(context)!.settings.arguments as List<UserModel>;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text("Home Screen"),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          UserModel currentUser = usersList[index];
          return ListTile(
            tileColor: Colors.blue,
            title: Text(currentUser.name),
            subtitle: Text(currentUser.gender),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 10,
          );
        },
        itemCount: usersList.length,
      ),
    );
  }
}
