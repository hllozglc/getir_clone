class Product {
  final int id;
  final String image;
  final List<String> images;
  final String name;
  final String miktar;
  final double fiyat;
  final double fiyatIndirimli;

  Product({
    required this.id,
    required this.image,
    required this.images,
    required this.name,
    required this.miktar,
    required this.fiyat,
    required this.fiyatIndirimli,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as int,
      image: json['image'] as String,
      images: (json['images'] as List<dynamic>).cast<String>(),
      name: json['name'] as String,
      miktar: json['miktar'] as String,
      fiyat: json['fiyat'] as double,
      fiyatIndirimli: json['fiyatIndirimli'] as double,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image': image,
      'images': images,
      'name': name,
      'miktar': miktar,
      'fiyat': fiyat,
      'fiyatIndirimli': fiyatIndirimli,
    };
  }
}
