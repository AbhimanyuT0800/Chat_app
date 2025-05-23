class OtpSentModel {
  int data;
  bool status;
  String message;

  OtpSentModel({
    required this.data,
    required this.status,
    required this.message,
  });

  factory OtpSentModel.fromJson(Map<String, dynamic> json) {
    return OtpSentModel(
      data: json['data'] ?? 0,
      status: json['status'] ?? false,
      message: json['message'] ?? '',
    );
  }
}
