import 'package:nxt_assessment/core/model/app_base_response.dart';
import 'package:nxt_assessment/core/model/base_model.dart';
import 'package:nxt_assessment/core/model/to_json_convertible.dart';

abstract class ApiDataSource {
  Future<AppBaseResponse<T>> get<T>({
    required String path,
    ToJsonConvertible? query,
    BaseModel? model,
  });

  void setHeaderToken(String token);

  void resetHeaderToken();
}
