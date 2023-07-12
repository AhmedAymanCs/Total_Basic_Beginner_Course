import 'package:bloc/bloc.dart';
import 'package:exmaple/modules/counterscreen/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates>
{
  CounterCubit() : super (CounterIntialState()) ;
  static CounterCubit get(context)=>BlocProvider.of(context);
  int counter =1;

  void munis()
  {
    counter--;
    emit(CounterChangeState());
  }
  void plus()
  {
    counter++;
    emit(CounterChangeState());
  }
}