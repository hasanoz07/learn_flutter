import 'package:flutter_test/flutter_test.dart';

import 'package:learn_flutter/303/generic_learn.dart';

void main() {
  setUp(() {});
  test(
    "User Calculate",
    () {
      final users = [
        GenericUser("vb", "10", 11),
        GenericUser("oz", "20", 21),
        GenericUser("dart", "30", 31),
        GenericUser("native", "40", 41),
      ];;
      final userManagment=UserManagment(AdminUser("Admin", "1881", 15, 1));
      final int result = userManagment.calculateMoney(users);
      final response =userManagment.showNames<String>(users);
      expect(result,119);
    },
  );
}
