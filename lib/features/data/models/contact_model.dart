class Contact {
  int? id;
  String? firstName;
  String? lastName;
  String? middleName;

  Contact({this.id, this.firstName, this.lastName, this.middleName});

  Contact.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    middleName = json['middle_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['middle_name'] = middleName;
    return data;
  }
}
