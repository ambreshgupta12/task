import 'package:flutter_task/bloc/base_bloc.dart';
import 'package:flutter_task/model/practicing_response.dart';
import 'package:flutter_task/respository/api_respository.dart';
import 'package:flutter_task/service/handle_error.dart';

class PracticingBloc extends BaseBloc<PracticingResponse>{
  final ApiRepository apiRepository=ApiRepository();
  void getWeather(String city)async{
    startLoading('loading');
    try{
      addDataToStream(await apiRepository.getPracticing());
    }
    catch(e){
      addErrorToStream(handleError(e));
    }
  }

}