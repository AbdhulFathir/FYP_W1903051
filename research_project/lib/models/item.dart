class Item {
  final int id;
  final String title;
  final String description;
  final String category;
  final double price;
  final double rating;
  final int reviewCount;
  final String status;
  final String imageUrl;
  final List<String> tags;

  Item({
    required this.id,
    required this.title,
    required this.description,
    this.category = 'General',
    this.price = 0.0,
    this.rating = 0.0,
    this.reviewCount = 0,
    this.status = 'Available',
    this.imageUrl = '',
    this.tags = const [],
  });
}
