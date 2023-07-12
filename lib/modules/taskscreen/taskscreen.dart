import 'package:exmaple/shared/components/components.dart';
import 'package:exmaple/shared/cubit/cubit.dart';
import 'package:exmaple/shared/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state)=> {},
      builder: (context,state)=> TaskBulider(AppCubit.get(context).tasks,'tasks'));
  }
}
