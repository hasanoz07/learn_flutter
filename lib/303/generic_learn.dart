class UserManagment<T extends AdminUser> {
  final T admin;

  UserManagment(this.admin);

  void sayName(GenericUser user) {
    print(user.name);
  }

  int calculateMoney(List<GenericUser> users) {
    //? Bir listenin içindeki verileri toplama işemi
    int sum = 0;
    for (var item in users) {
      sum += item.money;
    }
    int initialValue = admin.role == 1 ? admin.money : 0;
    // !Map işlemleri dettaylıca incelenmeli
    //?Bir listenin içindeki verileri toplama işlemi
    final sumMoney =
        users.map((e) => e.money).fold<int>(initialValue, (previousValue, element) => previousValue + element);
    //?  Bir listenin içindeki verileri toplama işlemi

    int _money = users.fold<int>(initialValue, (previousValue, element) => previousValue + element.money);
    print(sum);
    return _money;

    // * Sonuç sumMoney=_money=sum
  }

  Iterable<OZModels<R>>? showNames<R>(List<GenericUser> users) {
    if (R == String) {
      final names = users.map((e) => OZModels<R>(e.name.split("pattern").toList().cast<R>()));
      return names;
    }
    return null;
  }
}

class OZModels<T> {
  final String name = "oz";
  final List<T> items;

  OZModels(this.items);
}

class GenericUser {
  final String name;
  final String id;
  final int money;

  GenericUser(this.name, this.id, this.money);
}

class AdminUser extends GenericUser {
  final int role;
  AdminUser(super.name, super.id, super.money, this.role);
}
