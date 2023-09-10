import 'package:api/cubit/apiState.dart';
import 'package:api/model/apiModel.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class apiCubit extends Cubit<apiState> {
  apiCubit() : super(InitialState());
List<apiModel>apiList=[];
  void getDate() async {
    emit(GetloadingState());
var    data=[];
      await Dio().get('https://jsonplaceholder.typicode.com/posts').then((value){
       data=value.data;
       apiList=data.map((e)=>apiModel.fromJson(e)).toList();
       print(apiList.length);
       emit(GetSucesessState());
      } ).catchError((e){
        print(e.toString());
        emit(GetErorrState());
      });




}

}
