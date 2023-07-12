import 'package:bloc/bloc.dart';
import 'package:exmaple/modules/archivescreen/archivescreen.dart';
import 'package:exmaple/modules/donescreen/donescreen.dart';
import 'package:exmaple/modules/taskscreen/taskscreen.dart';
import 'package:exmaple/shared/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';

class AppCubit extends Cubit<AppStates>
{
  AppCubit(): super (AppinitialState());

 static AppCubit get(context) => BlocProvider.of(context);

  int currentIndexScreen=0;

  List<Widget> currentScreen=[
    TaskScreen(),
    DoneScreen(),
    ArchiveScreen(),
  ];
  List<String> Title =[
    'Tasks',
    'Done Tasks',
    'Archive Tasks',
  ];
  void Changebody(int index)
  {
    currentIndexScreen=index;
    emit(AppChangeBottomNavState());
  }

  bool BottomSheetIsShownen=false;

  IconData BottomSheetIcon= Icons.edit;

  void ChangeIcon({
  required bool isShowen,
  required IconData icon,
})
{
  BottomSheetIcon=icon;
  BottomSheetIsShownen=isShowen;
  emit(AppChangeIconNavState());
}


  Database? DataBase;

  List<Map> tasks =[];
  List<Map> done  =[];
  List<Map> archive =[];


  void CreateDb()
  {
    openDatabase(
        'todo.db',
        version: 1,
        onCreate: (datebase,version)
        {
          datebase.execute('CREATE TABLE tasks (id INTEGER PRIMARY KEY ,title TEXT ,date TEXT ,time Text,status TEXT)').then((value) {
            print('Table is Inserted');
          }).catchError((error){
            print('Error in Table Create ${error.toString()}');
          });
        },
         onOpen:(database) {
           print('DateBase is Opened');
           getDataBase(database);
        }
    ).then((value) {
      DataBase=value;
      emit(AppCreateDateBaseState());
    });
  }
 InsertDb({
    required String title,
    required String date,
    required String time,
  })
  async
  {
    await DataBase!.transaction((txn)
    async {
      txn.rawInsert('INSERT INTO tasks (title, date, time,status) VALUES ("$title","$date","$time","new")').then((value)
      {
        print('${value.toString()} Inserted');
        emit(AppInsertDateBaseState());
        getDataBase(DataBase);
      }).catchError((error){
        print('Error in row insert ${error.toString()}');
      });
    }
    );
  }
  void getDataBase(database)
  {
    tasks =[];
    done  =[];
    archive =[];
    database!.rawQuery('SELECT * FROM tasks').then((value) {
      value.forEach((element) {
        if (element['status']=='new')
        {
          tasks.add(element);
        }
        else if (element['status']=='done')
        {
          done.add(element);
        }
        else
        {
          archive.add(element);
        }
      });
      print(value);
      emit(AppGetDateBaseState());
    });
  }

  void updateData({
   required String status,
   required int id,
})
  {

    DataBase!.rawUpdate(
        'UPDATE tasks SET status = ? WHERE id = ?',
        ['$status', id,]).then((value)
    {
      emit(AppUpdateDateBaseState());
      getDataBase(DataBase);
    });


  }


  void DeleteData({

    required int id,
  })
  {
    DataBase!.rawDelete(
        'DELETE From tasks  WHERE id = ?',
        [id]).then((value)
    {
      emit(AppDeleteDateBaseState());
      getDataBase(DataBase);
    });


  }
}

