import 'package:flutter/material.dart';

void ShowSnackBar(BuildContext context , String message){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      padding: EdgeInsets.all(10),
      content: Text('message'),
    )
  );
}