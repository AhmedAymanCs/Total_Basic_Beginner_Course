import 'package:exmaple/shared/components/components.dart';
import 'package:exmaple/shared/cubit/cubit.dart';
import 'package:exmaple/shared/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArchiveScreen extends StatelessWidget {
  const ArchiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
        builder: (context,state,)=>TaskBulider(AppCubit.get(context).archive,'archive'),
        listener: (context,state)=>{});
  }
}
