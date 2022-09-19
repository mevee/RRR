class Post {
  int? userId;
  int? id;
  int? albumId;
  String? url;
  String? thumbnailUrl;
  String? title;
  String? body;

  Post({this.userId, this.id, this.title, this.body});

  Post.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    url = json['url'];
    thumbnailUrl = json['thumbnailUrl'];
    albumId = json['albumId'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['id'] = id;
    data['albumId'] = albumId;
    data['url'] = url;
    data['thumbnailUrl'] = thumbnailUrl;
    data['title'] = title;
    data['body'] = body;
    return data;
  }
}
