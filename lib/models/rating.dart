class Rating {
  final dynamic rate;
  final int count;

  Rating({
    required this.rate,
    required this.count,
  });

  factory Rating.fromJson(jsonData) {
    return Rating(
      rate: jsonData['rate'],
      count: jsonData['count'],
    );
  }
}
