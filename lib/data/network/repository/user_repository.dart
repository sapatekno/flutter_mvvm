import 'package:dio/dio.dart';
import 'package:sapatekno_mvvm/data/model/page_model.dart';
import 'package:sapatekno_mvvm/data/network/client/reqres_client.dart';

class UserRepository {
  final Dio _client = ReqresClient().init();

  Future<PageModel?>? getAllUsers({required int page}) async {
    var response = await _client.get('/users?page=$page&delay=5').catchError((error) {
      if (error is DioError) throw Exception(error.message);
    });
    return PageModel.fromJson(response.data);
  }
}
