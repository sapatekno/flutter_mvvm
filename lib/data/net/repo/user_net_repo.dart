import 'package:dio/dio.dart';
import 'package:sapatekno_mvvm/data/net/client/reqres_net_client.dart';
import 'package:sapatekno_mvvm/data/net/model/page_net_model.dart';

class UserNetRepo {
  /// * Path Definition
  final pathGetAllUsers = '/users?page=';

  final Dio _client = ReqresNetClient().init();

  Future<PageNetModel?>? getAllUsers({required int page}) async {
    var response = await _client.get('$pathGetAllUsers$page').catchError((error) {
      if (error is DioError) throw Exception(error.message);
    });
    return PageNetModel.fromJson(response.data);
  }
}
