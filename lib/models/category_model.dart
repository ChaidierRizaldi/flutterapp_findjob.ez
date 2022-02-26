class CategoryModel {
  String id;
  String name;
  String imageUrl;
  String createdAt;
  String updateAt;

  CategoryModel({
    this.id,
    this.name,
    this.imageUrl,
    this.createdAt,
    this.updateAt,
  });

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    imageUrl = json['imageUrl'];
    createdAt = json['createdAt'];
    updateAt = json['updateAt'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'createdAt': createdAt,
      'updateAt': updateAt,
    };
  }
}
