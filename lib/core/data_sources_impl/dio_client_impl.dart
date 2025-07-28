import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:nxt_assessment/core/data_sources/api_data_source.dart';
import 'package:nxt_assessment/core/model/base_model.dart';
import 'package:nxt_assessment/core/model/app_base_response.dart';
import 'package:nxt_assessment/core/model/to_json_convertible.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ApiDataSource)
class DioClientImpl implements ApiDataSource {
  final Dio _dio;

  DioClientImpl(this._dio) {
    if (kDebugMode) {
      _dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        compact: false,
      ));
    }
    // the normal way to set header token is after checking user data in splash screen not here
    setHeaderToken(
        "eyJhbGciOiJSUzI1NiJ9.eyJpZCI6MzAzLCJ0eXBlIjoidXNlciIsInJhbiI6IkJORU5WSVBOTlFUWVBMS0tVQ0JWIiwic3RhdHVzIjoxfQ.YGV-jGKZj1Lp4SqlM3aiF6Aov6YVF6lZRMpKvx_Zdrpjj4C1zE-JSTKtjVboQ9de58TUViyVOc4JwiktjF_4yxnYzIrw449s584j2GiqUpxfp6OPmfAj8BAbfN_M4RoU5PXEjhcNVh5uNRtxtvxZtpECrl72_22T4he3LbqISMNHzVh5eprIKIFLt_pM7cyRKt3Njf8I89CLnq5nUpiDHnMMForamKq9jubmiYPOHpFvijEE3-jusRk0F1T32zMY_0AELXnpqhbbx6HtmMdxBahnrUNyznacdVwaSrNus8vX01N8zEcfRvkRzYuqjnZXr9jrm2iriHq80iicUG99GQ");
  }

  @override
  Future<AppBaseResponse<T>> get<T>({required String path, ToJsonConvertible? query, BaseModel? model}) async {
    final res = await _dio.get(
      path,
      queryParameters: query?.toJson(),
    );

    return AppBaseResponse<T>.fromJson(res.data, model);
  }

  @override
  void resetHeaderToken() {
    _dio.options.headers.remove('Authorization');
  }

  @override
  void setHeaderToken(String token) {
    _dio.options.headers['Authorization'] = 'Bearer $token';
  }
}
