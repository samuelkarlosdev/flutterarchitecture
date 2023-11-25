class JsonPlaceholderPostsModel {
  /*int? userId;
  int? id;
  String? title;
  String? body;

  JsonPlaceholderPostsModel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userId': userId,
      'id': id,
      'title': title,
      'body': body,
    };
  }

  factory JsonPlaceholderPostsModel.fromMap(Map<String, dynamic> map) {
    return JsonPlaceholderPostsModel(
      userId: map['userId'] != null ? map['userId'] as int : null,
      id: map['id'] != null ? map['id'] as int : null,
      title: map['title'] != null ? map['title'] as String : null,
      body: map['body'] != null ? map['body'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory JsonPlaceholderPostsModel.fromJson(String source) =>
      JsonPlaceholderPostsModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return "title: $title";
  }*/

  final int userId;
  final int id;
  final String title;
  final String body;

  JsonPlaceholderPostsModel(this.userId, this.id, this.title, this.body);

  factory JsonPlaceholderPostsModel.fromJson(Map json) {
    return JsonPlaceholderPostsModel(
        json['userId'], json['id'], json['title'], json['body']);
  }
}

/*class JsonPlaceholderPostsModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  JsonPlaceholderPostsModel({this.userId, this.id, this.title, this.body});

  JsonPlaceholderPostsModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['body'] = this.body;
    return data;
  }*/

