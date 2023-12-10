abstract class Employee {
  void work();
}

class Programmer implements Employee {
  @override
  void work() {
    print('coding an app');
  }
}

class HRManager implements Employee {
  @override
  void work() {
    print('recruiting people');
  }
}

class Boss implements Employee {
  @override
  void work() {
    print('leading the people');
  }
}

// Alternate Approach
class FactoryMethod {
  static Employee getEmployee(String type) {
    switch (type) {
      case 'programmer':
        return Programmer();
      case 'hr':
        return HRManager();
      case 'boss':
        return Boss();
      default:
        return Programmer();
    }
  }
}
