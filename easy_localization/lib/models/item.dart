class Item {
  final int id;
  final String categoryKey;
  final double price;
  final double rating;
  final int reviewCount;
  final String statusKey;
  final String imageUrl;
  final List<String> tagKeys;

  Item({
    required this.id,
    required this.categoryKey,
    this.price = 0.0,
    this.rating = 0.0,
    this.reviewCount = 0,
    required this.statusKey,
    this.imageUrl = '',
    this.tagKeys = const [],
  });
}
