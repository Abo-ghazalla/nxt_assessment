import 'package:nxt_assessment/core/model/base_model.dart';

class AppBaseResponse<T> extends BaseResponse {
  @override
  final String? message;
  final bool success;
  final T? data;
  @override
  final int? statusCode;

  AppBaseResponse({
    this.statusCode,
    this.message,
    this.success = true,
    this.data,
  }) : super(message: message, statusCode: statusCode);

  factory AppBaseResponse.fromJson(Map<String, dynamic>? json, BaseModel? model) {
    return AppBaseResponse<T>(
      statusCode: json?["statusCode"],
      message: json?["message"],
      success: json?["success"] ?? true,
      data: json == null || model == null ? null : (model.fromJson(json) as T),
    );
  }
}
