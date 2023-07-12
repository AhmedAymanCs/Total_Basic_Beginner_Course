import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:exmaple/shared/components/components.dart';
import 'package:exmaple/shared/cubit/cubit.dart';
import 'package:exmaple/shared/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';


class HomeLayout extends StatelessWidget {
  var TitleController = TextEditingController();
  var TimeController = TextEditingController();
  var DateController = TextEditingController();
  var scafoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit()..CreateDb(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {
          if(state is AppInsertDateBaseState)
            {
              Navigator.pop(context);
            }
        },
        builder: (context, state) =>
            Scaffold(
              key: scafoldKey,
              appBar: AppBar(
                title: Text(
                  '${AppCubit
                      .get(context)
                      .Title[AppCubit
                      .get(context)
                      .currentIndexScreen]}',
                ),
                backgroundColor: Colors.indigo,
              ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.indigo,
                onPressed: () {
                  if (AppCubit.get(context).BottomSheetIsShownen)
                  {
                    if (formKey.currentState!.validate()) {
                      AppCubit.get(context).InsertDb(
                          title: TitleController.text,
                          date: DateController.text,
                          time: TimeController.text);
                          AppCubit.get(context).ChangeIcon(isShowen: false, icon: Icons.edit);
                      // InsertDb(
                      //   title: TitleController.text,
                      //   time: TimeController.text,
                      //   date: DateController.text,
                      // ).then((value)
                      // {
                      //   getDataBase(DataBase).then((value) {});
                      //   Navigator.pop(context);
                      //   BottomSheetIsShownen=false;
                      //   // setState(() {
                      //   //   BottomSheetIcon=Icons.edit;
                      //   // });
                      // });

                    }
                  }

                  else {
                    scafoldKey.currentState!.showBottomSheet((context) =>
                        Container(
                          color: Colors.grey[100],
                          padding: EdgeInsets.all(15),
                          child: Form(
                            key: formKey,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Defaultformfield(controller: TitleController,
                                  validator: (item) {
                                    if (item!.isEmpty) {
                                      return 'Title Must Be Not Empty';
                                    }
                                    return null;
                                  },
                                  text: 'Task Title',
                                  prefix: Icons.title,),
                                SizedBox(
                                  height: 10,
                                ),
                                Defaultformfield(controller: TimeController,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Time Must Be Not Empty';
                                      }
                                      return null;
                                    },
                                    text: 'Task Time',
                                    prefix: Icons.watch_later_outlined,
                                    onTap: () {
                                      showTimePicker(
                                        context: context,
                                        initialTime: TimeOfDay.now(),
                                      ).then((value) {
                                        TimeController.text =
                                            value!.format(context).toString();
                                        print('Time Picked is ${value.format(
                                            context).toString()}');
                                      });
                                    }),
                                SizedBox(
                                  height: 10,
                                ),
                                Defaultformfield(controller: DateController,
                                    validator: (item) {
                                      if (item!.isEmpty) {
                                        return 'Date Must Be Not Empty';
                                      }
                                      return null;
                                    },
                                    text: 'Task Date',
                                    prefix: Icons.calendar_today,
                                    onTap: () {
                                      showDatePicker(context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime.now(),
                                          lastDate: DateTime.parse('2021-12-25')
                                      ).then((value) {
                                        DateController.text =
                                            DateFormat.yMMMd().format(value!);
                                        print(
                                            'Date is picked ${DateFormat.yMMMd()
                                                .format(value)}');
                                      });
                                    },
                                    TextType: TextInputType.datetime),
                              ],
                            ),
                          ),
                        )).closed.then((value) {
                      AppCubit.get(context).ChangeIcon(
                          isShowen: false, icon: Icons.edit);
                    }
                      // BottomSheetIsShownen=false;
                      // // setState(() {
                      // //   BottomSheetIcon=Icons.edit;
                      // // });}
                    );
                    AppCubit.get(context).ChangeIcon(
                        isShowen: true, icon: Icons.add);
                    // BottomSheetIsShownen=true;
                    // // setState(() {
                    // //   BottomSheetIcon=Icons.add;
                    // // });

                  }
                },
                child: Icon(AppCubit
                    .get(context)
                    .BottomSheetIcon),
              ),
              bottomNavigationBar: BottomNavigationBar(
                fixedColor: Colors.indigo,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.menu),
                    label: 'Tasks',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.check),
                    label: 'Done',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.archive),
                    label: 'Archive',
                  ),
                ],
                currentIndex: AppCubit
                    .get(context)
                    .currentIndexScreen,
                onTap: (index) {
                  AppCubit.get(context).Changebody(index);
                  ;
                },
              ),
              body: ConditionalBuilder(
                builder: (context) => AppCubit.get(context).currentScreen[AppCubit.get(context).currentIndexScreen],
                condition: true,
                fallback: (context) =>
                    Center(child: CircularProgressIndicator()),
              ),
            ),
      ),
    );
  }
}

