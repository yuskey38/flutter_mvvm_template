// Project imports:
import 'package:flutter_mvvm_template/data/model/user.dart';

class UserFactory {
  static User generateUser(int number) {
    return User(id: "id$number", profileImageUrl: "profileImageUrl$number");
  }
}
