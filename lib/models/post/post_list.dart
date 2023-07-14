class PostList {
  PostList({
    required this.currentPage,
    required this.hasMoreData,
    required this.msg,
    required this.data,
  });

  factory PostList.fromJson(Map<String, dynamic> json) {
    return PostList(
      currentPage: json['current_page'] as int,
      hasMoreData: json['HasMoreData'] as bool,
      msg: json['msg'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => PostData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
  int currentPage;
  bool hasMoreData;
  String msg;
  List<PostData> data;

  Map<String, dynamic> toJson() {
    return {
      'current_page': currentPage,
      'HasMoreData': hasMoreData,
      'msg': msg,
      'data': List<dynamic>.from(data.map((e) => e.toJson())),
    };
  }
}

class PostData {
  PostData({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.categoryId,
    required this.featureImage,
    required this.languageId,
    required this.content,
    required this.isLiked,
    required this.addedBy,
    required this.interest,
  });

  factory PostData.fromJson(Map<String, dynamic> json) {
    return PostData(
      id: json['_id'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      categoryId: json['category_id'] as String,
      featureImage: json['feature_image'] as String,
      languageId: json['language_id'] as String,
      content: json['content'] as String,
      isLiked: json['is_liked'] as bool,
      addedBy: AddedBy.fromJson(json['added_by'] as Map<String, dynamic>),
      interest:
          (json['interest'] as List<dynamic>).map((e) => e as String).toList(),
    );
  }
  String id;
  String title;
  String subtitle;
  String categoryId;
  String featureImage;
  String languageId;
  String content;
  bool isLiked;
  AddedBy addedBy;
  List<String> interest;

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'title': title,
      'subtitle': subtitle,
      'category_id': categoryId,
      'feature_image': featureImage,
      'language_id': languageId,
      'content': content,
      'is_liked': isLiked,
      'added_by': addedBy.toJson(),
      'interest': interest,
    };
  }
}

class AddedBy {
  AddedBy({
    required this.userId,
    required this.name,
    required this.mobileNo,
    required this.lat,
    required this.lang,
    required this.langId,
    required this.interestedTopic,
    required this.email,
  });

  factory AddedBy.fromJson(Map<String, dynamic> json) {
    return AddedBy(
      userId: json['userId'] as String,
      name: json['name'] as String,
      mobileNo: json['mobileNo'] as String,
      lat: json['lat'] as double,
      lang: json['lang'] as double,
      langId: json['lang_id'] as String,
      interestedTopic: (json['intrested_topic'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      email: json['email'] as String,
    );
  }
  String userId;
  String name;
  String mobileNo;
  double lat;
  double lang;
  String langId;
  List<String> interestedTopic;
  String email;

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'name': name,
      'mobileNo': mobileNo,
      'lat': lat,
      'lang': lang,
      'lang_id': langId,
      'intrested_topic': interestedTopic,
      'email': email,
    };
  }
}
