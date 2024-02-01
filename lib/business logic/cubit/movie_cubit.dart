import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/business%20logic/cubit/movie_state.dart';
import 'package:movie_app/data/movie_model.dart';

class MovieCubit extends Cubit<MovieState> {
  MovieCubit() : super(MovieInitial());
  static MovieCubit get(context)=> BlocProvider.of(context);

  Dio dio = Dio();
  MovieModel? movieModel;
  void getMovie() async {
    var dio = Dio();
    emit(MovieIsLoading());
    var response = await dio.request(
      'https://api.themoviedb.org/3/movie/popular?api_key=db6fe8c12a1db185c388712538ef01b1',
      options: Options(
        method: 'GET',
      )
      );
      movieModel = MovieModel.fromJson(response.data);
      if (response.statusCode == 200) {
        emit(MovieIsSuccess());
        print(response.data);
  print(json.encode(response.data));
}
else {
  print(response.statusMessage);
  emit(MovieIsError());
}
  }
}