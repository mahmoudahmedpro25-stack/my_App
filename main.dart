import 'dart:io';

class User {
  String name;
  int age;
  String address;
  String city;
  int visaNumber;
  int birthday;

  User(
    this.name,
    this.age,
    this.address,
    this.city,
    this.visaNumber,
    this.birthday,
  );
}

List<User> users = [];

void addUser() {
  print('Enter name:');
  String name = stdin.readLineSync()!;

  print('Enter age:');
  int age = int.parse(stdin.readLineSync()!);

  print('Enter address:');
  String address = stdin.readLineSync()!;

  print('Enter city:');
  String city = stdin.readLineSync()!;

  int visaNumber = age * 76;

  print('Enter birthday:');
  int birthday = int.parse(stdin.readLineSync()!);

  User user = User(name, age, address, city, visaNumber, birthday);

  users.add(user);

  print('User added successfully');
  print('Visa Number: $visaNumber');
}

void editUser() {
  print('Enter user number to edit:');
  int number = int.parse(stdin.readLineSync()!);

  if (number >= 1 && number <= users.length) {
    print('Enter new name:');
    users[number - 1].name = stdin.readLineSync()!;

    print('User updated successfully');
  } else {
    print('User not found');
  }
}

void showUsers() {
  for (int i = 0; i < users.length; i++) {
    print('User number: ${i + 1}');
    print('Name: ${users[i].name}');
    print('Age: ${users[i].age}');
    print('Address: ${users[i].address}');
    print('City: ${users[i].city}');
    print('Visa Number: ${users[i].visaNumber}');
    print('Birthday: ${users[i].birthday}');
    print('-------------------');
  }

  if (users.isEmpty) {
    print('No users found');
  }
}

void main() {
  while (true) {
    print('1. Add User');
    print('2. Edit User');
    print('3. Show Users');
    print('4. Exit');

    String choice = stdin.readLineSync()!;

    if (choice == '1') {
      addUser();
    } else if (choice == '2') {
      editUser();
    } else if (choice == '3') {
      showUsers();
    } else if (choice == '4') {
      break;
    } else {
      print('Wrong choice');
    }
  }
}
