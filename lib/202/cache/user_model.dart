class User {
  String? name;
  String? desc;
  String? url;

  User(this.name, this.desc, this.url);

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    desc = json['desc'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['desc'] = this.desc;
    data['url'] = this.url;
    return data;
  }
}
