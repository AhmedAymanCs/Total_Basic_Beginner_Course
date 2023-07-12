import 'package:exmaple/modules/counterscreen/cubit/cubit.dart';
import 'package:exmaple/modules/counterscreen/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class counterscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit,CounterStates>(
        listener: (context,state) {},
        builder: (context,state) =>Scaffold(
          appBar: AppBar(
            title: Text('Counter Screen'),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: (){
                  CounterCubit.get(context).munis();
                },
                    child:Text('Munis') ),
                Text('${CounterCubit.get(context).counter}',
                style: TextStyle(
                  fontSize: 30,
                ),),
                TextButton(onPressed: (){
                  CounterCubit.get(context).plus();
                },
                    child:Text('Plus')
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
