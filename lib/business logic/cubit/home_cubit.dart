import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/business%20logic/cubit/home_state.dart';
import 'package:movie_app/data/home_model.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context)=> BlocProvider.of(context);

  Dio dio = Dio();
  HomeModel? homeModel;
  void getHome() async {
    var dio = Dio();
    emit(HomeIsLoading());
    var response = await dio.request(
      'https://api.themoviedb.org/3/discover/movie?api_key=db6fe8c12a1db185c388712538ef01b1',
      options: Options(
        method: 'GET',
      )
      );
      homeModel = HomeModel.fromJson(response.data);
      if (response.statusCode == 200) {
        emit(HomeIsSuccess());
        print(response.data);
  print(json.encode(response.data));
}
else {
  print(response.statusMessage);
  emit(HomeIsError());
}
  }
}