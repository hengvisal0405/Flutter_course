enum Skill { Flutter, Dart, Other }

class Employee {
  String? _name;
  List<Skill>? _skill;
  double? _baseSalary;
  int? _yearsOfExperience;
  Address _address;

  Employee(this._name, this._yearsOfExperience, this._address, this._skill);

  Employee.mobileDeveloper(String name, int yearsOfExperience, this._address, this._skill) {
    this._name = name;
    this._yearsOfExperience = yearsOfExperience;
  }

  String? get name => _name;
  List<Skill>? get skill => _skill;
  double? get baseSalary => _baseSalary;
  int? get yearsOfExperience => _yearsOfExperience;

  double? computeTheSalary() {
    double baseSalary = 40000;
    baseSalary += (_yearsOfExperience ?? 0) * 2000;  // Add base based on years of experience

    for (var skills in skill!) {
      if (skills == Skill.Flutter) {
        baseSalary += 5000;
      } else if (skills == Skill.Dart) {
        baseSalary += 3000;
      } else {
        baseSalary += 1000;
      }
    }

    _baseSalary = baseSalary;
    return _baseSalary;
  }

  void displayAddress() {
    print("Address: $_address");
  }

  @override
  String toString() {
    return '$_name, $_skill, $_baseSalary, $_address, $_yearsOfExperience';
  }

  void displayEmployee() {
    String skillNames = _skill!.map((e) => e.toString().split('.').last).join(', ');

    print('Employee\nName: $_name\nSkill: $skillNames\nSalary: ${computeTheSalary()}\$\nAddress: $_address\nYears of experience: $_yearsOfExperience years');
  }
}

class Address {
  String? _street;
  String? _city;
  String? _zipCode;

  Address(this._city, this._street, this._zipCode);

  @override
  String toString() {
    return '$_street, $_city, $_zipCode';
  }
}

void main() {
  Address addObject = Address("Phnom Penh", "42 st", "1204**");
  Employee employeeObject = Employee.mobileDeveloper("Heng Visal", 3, addObject, [Skill.Dart]);
  employeeObject.displayEmployee();
}
