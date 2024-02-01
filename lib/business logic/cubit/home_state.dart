import 'package:flutter/material.dart';

@immutable
sealed class HomeState {}
class HomeInitial extends HomeState{}
class HomeIsLoading extends HomeState{}
class HomeIsSuccess extends HomeState{}
class HomeIsError extends HomeState{}