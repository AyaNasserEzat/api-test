import 'package:api/cubit/apiCubit.dart';
import 'package:api/cubit/apiState.dart';
import 'package:api/screens/apiScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => apiCubit()..getDate(),
      child: MaterialApp(
        home:apiSreen(),
      ),
    );
  }
}