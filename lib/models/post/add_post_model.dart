class AddNewsModel {
  AddNewsModel({
    this.title = '',
    this.subtitle = '',
    this.categoryId = '',
    this.featureImage = '',
    this.languageId = '',
    this.content = '',
    this.likedBy = const [],
    this.addedBy = '',
    this.created_at,
    this.interest = const [],
  });

  factory AddNewsModel.fromJson(Map<String, dynamic> json) {
    return AddNewsModel(
      title: json['title'] as String? ?? '',
      subtitle: json['subtitle'] as String? ?? '',
      categoryId: json['category_id'] as String? ?? '',
      featureImage: json['feature_image'] as String? ?? '',
      languageId: json['language_id'] as String? ?? '',
      content: json['content'] as String? ?? '',
      likedBy: List<String>.from(json['liked_by'] as List<dynamic>? ?? []),
      addedBy: json['added_by'] as String? ?? '',
      interest: List<String>.from(json['interest'] as List<dynamic>? ?? []),
      created_at: json['created_at'],
    );
  }
  String title;
  String subtitle;
  String categoryId;
  String featureImage;
  String languageId;
  String content;
  List<String> likedBy;
  String addedBy;
  dynamic created_at;
  List<String> interest;

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'subtitle': subtitle,
      'category_id': categoryId,
      'feature_image': featureImage,
      'language_id': languageId,
      'content': content,
      'liked_by': likedBy,
      'added_by': addedBy,
      'interest': interest,
      'created_at': created_at,
    };
  }
}
