import 'package:exmaple/models/users/story_models.dart';
import 'package:flutter/material.dart';

import '../../models/users/user_model.dart';
class massengerScreen extends StatelessWidget {
  List <dataModel> users =[
    dataModel(
      name: 'Ahmed Ayman Fathy',
      massage:'Hello',
      time: '02.20PM'
    ),
    dataModel(
        name: 'Eman Ayman Fathy',
        massage:'Where are you now ?',
        time: '04.01PM'
    ),
    dataModel(
        name: 'Ayman Fathy',
        massage:'انا جي بكره بعد العصر',
        time: '01.20PM'
    ),
    dataModel(
        name: 'Ahmed Ayman Fathy',
        massage:'Hello',
        time: '02.20PM'
    ),
    dataModel(
        name: 'Eman Ayman Fathy',
        massage:'Where are you now ?',
        time: '04.01PM'
    ),
    dataModel(
        name: 'Ayman Fathy',
        massage:'انا جي بكره بعد العصر',
        time: '01.20PM'
    ),
    dataModel(
        name: 'Ahmed Ayman Fathy',
        massage:'Hello',
        time: '02.20PM'
    ),
    dataModel(
        name: 'Eman Ayman Fathy',
        massage:'Where are you now ?',
        time: '04.01PM'
    ),
    dataModel(
        name: 'Ayman Fathy',
        massage:'انا جي بكره بعد العصر',
        time: '01.20PM'
    ),
    dataModel(
        name: 'Ahmed Ayman Fathy',
        massage:'Hello',
        time: '02.20PM'
    ),
    dataModel(
        name: 'Eman Ayman Fathy',
        massage:'Where are you now ?',
        time: '04.01PM'
    ),
    dataModel(
        name: 'Ayman Fathy',
        massage:'انا جي بكره بعد العصر',
        time: '01.20PM'
    ),
  ];
  List<StoryModel> Story =[
    StoryModel(name: 'Ahmed'),
    StoryModel(name: 'Ayman Fathy'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 10,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Row(
          children: [
            Container(
              padding: EdgeInsetsDirectional.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(100),
                ),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image(
                height: 50,
                width: 50,
                image: NetworkImage(
                  'https://i.pinimg.com/736x/8b/16/7a/8b167af653c2399dd93b952a48740620.jpg',
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Chats',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 25,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.all(
                Radius.circular(90),
              ),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            height: 10,
            width: 50,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black12,
                ),
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search_sharp,
                      ),
                      hintText: 'Search',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 90,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStory(Story[index]),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 20,
                  ),
                  itemCount: Story.length,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context,index) => buildChats(users[index]),
                separatorBuilder: (context,index) => SizedBox(
                  height: 20,
                ),
                itemCount: users.length,
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget buildStory(StoryModel user) => Row(
        children: [
          Container(
            width: 70,
            child: Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                        'https://i.pinimg.com/736x/8b/16/7a/8b167af653c2399dd93b952a48740620.jpg',
                      ),
                    ),
                    CircleAvatar(
                      radius: 7 ,
                      backgroundColor: Colors.green,
                    ),

                  ],
                ),
                Container(
                  width: 50,
                  child: Text(
                    '${user.name}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 15,
                        //fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
  Widget buildChats(dataModel users ) => Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
              'https://i.pinimg.com/736x/8b/16/7a/8b167af653c2399dd93b952a48740620.jpg',
            ),
          ),
          CircleAvatar(
            radius: 7 ,
            backgroundColor: Colors.green,
          ),

        ],
      ),
      SizedBox(
        width: 10,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${users.name}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    '${users.massage}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  height: 7,
                  width: 7,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    '${users.time}',
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    ],
  );

}
