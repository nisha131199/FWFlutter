class Product {
  final String title;
  final String body;
  final int userId;
  final int id;

  Product(
      this.title,
      this.body,
      this.userId,
      this.id);

  factory Product.fromMap(Map<String, dynamic> json) {

    return Product(
      json['title'],
      json['body'],
      json['userId'],
      json['id'],
    );
  }
}