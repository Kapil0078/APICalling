/*
  {
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
    "phone": "1-770-736-8031 x56442",
    "website": "hildegard.org",
   "company": {
      "name": "Romaguera-Crona",
      "catchPhrase": "Multi-layered client-server neural-net",
      "bs": "harness real-time e-markets"
    },
        "address": {
      "street": "Victor Plains",
      "suite": "Suite 879",
      "city": "Wisokyburgh",
      "zipcode": "90566-7771",
    
    },

  },
*/

class User6 {
  final int id;
  final String name;
  final String userName;
  final String email;
  final String phone;
  final String website;
  final Company company;
  final Address address;

  User6({
    required this.id,
    required this.name,
    required this.userName,
    required this.email,
    required this.phone,
    required this.website,
    required this.company,
    required this.address,
  });

  factory User6.fromJson(Map<String, dynamic> json) {
    return User6(
      id: json['id'],
      name: json['name'],
      userName: json['username'],
      email: json['email'],
      phone: json['phone'],
      website: json['website'],
      company: Company.fromJson(json['company']),
      address: Address.fromJson(json["address"]),
    );
  }
}

class Company {
  final String name;
  final String catchPhrase;
  final String bs;

  Company({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });
  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      name: json["name"],
      catchPhrase: json["catchPhrase"],
      bs: json["bs"],
    );
  }
}

class Address {
  final String street, suite, city, zipcode;

  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      street: json["street"],
      suite: json["suite"],
      city: json["city"],
      zipcode: json["zipcode"],
    );
  }
}
