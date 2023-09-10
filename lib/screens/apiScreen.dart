import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/apiCubit.dart';
import '../cubit/apiState.dart';

class apiSreen extends StatelessWidget {
  const apiSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<apiCubit,apiState>(builder: (context,state){
      return Scaffold(
 body: ListView.builder(
  itemCount:BlocProvider.of<apiCubit>(context).apiList.length ,
  itemBuilder: (context,indx){
  return Container(
    margin: EdgeInsets.all(10),
    height: 200,
color: Colors.amber[300],
child: Padding(
  padding: const EdgeInsets.all(8.0),
  child:   SingleChildScrollView(
    child: Expanded(
      child: Column(
      
        crossAxisAlignment: CrossAxisAlignment.start,
      
        children: [
      
          Text( BlocProvider.of<apiCubit>(context).apiList[indx].userId.toString()),
      
            Text( BlocProvider.of<apiCubit>(context).apiList[indx].id.toString()),
      
              Text( BlocProvider.of<apiCubit>(context).apiList[indx].title.toString()),
      
              SizedBox(height: 19,),
      
                Text( BlocProvider.of<apiCubit>(context).apiList[indx].body.toString()),
      
        ],
      
       
      
      ),
    ),
  ),
),
  );
 }),
      );
    });
  }
}