/// Response models for the Article Ideas Generator API.

/// API Response wrapper.
class ArticleideasResponse {
  final String status;
  final dynamic error;
  final ArticleideasData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  ArticleideasResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory ArticleideasResponse.fromJson(Map<String, dynamic> json) => ArticleideasResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? ArticleideasData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Article Ideas Generator API.

class ArticleideasData {
  String? topic;
  num? topicIdeas;
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
