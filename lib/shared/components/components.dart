import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:exmaple/shared/cubit/cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton (
{
   String text = 'Button',
   double width = double.infinity,
   Color color = Colors.blue,
  required VoidCallback function ,
  bool isUpper = true ,
}) {
  return Container(
      width: width,
      color: color,
      child: TextButton(onPressed: function,
        child: Text(
          '${isUpper ? text.toUpperCase() : text }',
          style: TextStyle(
              fontSize: 25,
              color: Colors.white
          ),
        ),)
  );
}

Widget Defaultformfield (
{
  required TextEditingController controller,
  Function (String ?)? onSubmit,
  VoidCallback? onChanged,
  VoidCallback? onTap,
  required String? Function (String?) validator,
  required String text ,
  IconData? prefix,
  IconButton ? suffix ,
  bool obscure =false,
  TextInputType? TextType,
  bool isClicable =true,

}
)
{
  return TextFormField(
    enabled: isClicable,
    keyboardType: TextType,
    obscureText: obscure,
    controller: controller ,
    onFieldSubmitted: onSubmit,
    onChanged: (value) => onChanged,
    onTap: onTap,
    validator:validator ,
    decoration: InputDecoration(
      labelText: text,
      prefixIcon: Icon(
        prefix,
      ),
      suffixIcon: suffix,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          )),
    ),
  ) ;
}
Widget bulidTaskItem (Map tasks, BuildContext context, String name)
{
  return Dismissible(
    key: Key(tasks['id'].toString()),
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            child: Text(
              '${tasks['time']}',
              style: TextStyle(
                color: Colors.white
              ),
            ),
            backgroundColor: Colors.blueGrey,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(end: 80),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '${tasks['title']}',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    '${tasks['date']}',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          IconButton(onPressed: ()
          {
          AppCubit.get(context).updateData(status: 'done', id: tasks['id']);
          }, icon: Icon(
            Icons.check_box,
            color: Colors.lightGreen,
          ),
          ),
          SizedBox(
            width: 10,
          ),
          // IconButton(onPressed: (){
          //   AppCubit.get(context).updateData(status: 'archive', id: tasks['id']);
          // }, icon: Icon(
          //   Icons.archive_outlined,
          //   color: Colors.black26,
          // )),

        ],
      ),
    ),
    onDismissed: (direction)
    {
      if (name == 'tasks')
      {
        if (direction == DismissDirection.startToEnd) {
          AppCubit.get(context).DeleteData(id: tasks['id']);
        }
        else {
          AppCubit.get(context).updateData(status: 'archive', id: tasks['id']);
        }
      }

      else if (name == 'archive')
        {
          if (direction == DismissDirection.startToEnd) {
            AppCubit.get(context).DeleteData(id: tasks['id']);
          }
          else {
            AppCubit.get(context).updateData(status: 'done', id: tasks['id']);
          }
        }
      else
        {
          AppCubit.get(context).DeleteData(id: tasks['id']);
        }
    },
  );
}
Widget TaskBulider(
    List<Map> tasks , String name)=>ConditionalBuilder(
  builder:(context) => ListView.separated(itemBuilder: (context,index)=> bulidTaskItem(tasks[index] , context ,name),
      separatorBuilder:(context,index)=>Container(
        height: 1,
        width: double.infinity,
        color: Colors.grey,
      ) ,
      itemCount:tasks.length ),
  condition: tasks.length != 0,
  fallback: (context)=>Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.menu,
          size: 100,
          color: Colors.grey,
        ),
        Text('No Tasks yet,Please Add Some Tasks'
          ,style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey
          ),),
      ],
    ),
  ),
);
