import 'package:dio/dio.dart';
import 'package:flutter_task/model/practicing_response.dart';
import 'package:flutter_task/service/dio_client.dart';


class ApiRepository {
  
  DioClient dioClient;
  String _baseUrl = "http://ec2-18-222-107-110.us-east-2.compute.amazonaws.com/";
  ApiRepository() {
    var dio = Dio();
    dioClient = DioClient(_baseUrl, dio);
  }
  Future<PracticingResponse> getPracticing() async {
    final response = await dioClient.get('MyTours?User_id=30');
    return PracticingResponse.fromJson(response);
  }
}
