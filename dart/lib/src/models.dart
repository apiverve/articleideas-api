/// Response models for the Article Ideas Generator API.

/// API Response wrapper.
class ArticleideasResponse {
  final String status;
  final dynamic error;
  final ArticleideasData? data;

  ArticleideasResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory ArticleideasResponse.fromJson(Map<String, dynamic> json) => ArticleideasResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? ArticleideasData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Article Ideas Generator API.

class ArticleideasData {
  String? topic;
  int? topicIdeas;
  List<String>? topics;

  ArticleideasData({
    this.topic,
    this.topicIdeas,
    this.topics,
  });

  factory ArticleideasData.fromJson(Map<String, dynamic> json) => ArticleideasData(
      topic: json['topic'],
      topicIdeas: json['topicIdeas'],
      topics: (json['topics'] as List?)?.cast<String>(),
    );
}

class ArticleideasRequest {
  String topic;

  ArticleideasRequest({
    required this.topic,
  });

  Map<String, dynamic> toJson() => {
      'topic': topic,
    };
}
