class Person {
  String name;
  String? address, email;
  int age;
  Person({this.email, this.address, required this.name, required this.age});

  void info() {
    if (email == null && address == null) {
      print('your name is:${this.name},your age is:${this.age}');
    } else {
      print('your name is:${this.name},your age is:${this.age},your address is:${this.address},your phone is:${this.address}');
    }
  }
}
