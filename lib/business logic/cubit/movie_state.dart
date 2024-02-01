import 'package:flutter/material.dart';

@immutable
sealed class MovieState {}
class MovieInitial extends MovieState{}
class MovieIsLoading extends MovieState{}
class MovieIsSuccess extends MovieState{}
class MovieIsError extends MovieState{}