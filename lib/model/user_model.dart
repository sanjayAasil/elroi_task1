class User {
  final Map<String, dynamic> json;

  User(this.json);

  String get userId => json['userId'];

  int get uniqueId => json['id'];

  String get title => json['title'];

  String get body => json['body'];

}
