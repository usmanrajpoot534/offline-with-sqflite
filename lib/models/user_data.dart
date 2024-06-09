class UserData {
  final String status;
  final String message;
  final List<User> users;

  UserData({
    required this.status,
    required this.message,
    required this.users,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      status: json['status'],
      message: json['message'],
      users: List<User>.from(json['users'].map((x) => User.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'message': message,
      'users': users.map((x) => x.toJson()).toList(),
    };
  }
}

class User {
  final int id;
  final String name;
  final int age;
  final String gender;

  const User({
    required this.id,
    required this.name,
    required this.age,
    required this.gender,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      age: json['age'],
      gender: json['gender'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'gender': gender,
    };
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name, age: $age, gender: $gender)';
  }
}
