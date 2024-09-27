import 'package:test_navigations/models/models/user_model.dart';

class ApiServices {
  Future<List<UserModel>> getUsers() {
    List<UserModel> users = [
      UserModel("Ziad", "Male"),
      UserModel("Ahmed", "Male"),
      UserModel("Mourad", "Male"),
      UserModel("Mohamed", "Male"),
      UserModel("Ebrahim", "Male"),
      UserModel("Mahmoud", "Male"),
    ];
    return Future.delayed(const Duration(seconds: 5), () => users);
  }
}
