abstract class BaseModel {
  fromJson(Map<String, dynamic> json);
}

abstract class BaseResponse {
  final String? message;
  final int? statusCode;

  BaseResponse({
    this.message,
    this.statusCode,
  });

}


