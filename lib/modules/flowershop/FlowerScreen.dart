import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Flower extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        leading: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.4),
            borderRadius: BorderRadiusDirectional.all(
              Radius.circular(20)
            ),
          ),
          child: Icon(
            Icons.ac_unit ,
            color: Colors.yellowAccent,
          ),
        ),
        title: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.2),
            borderRadius: BorderRadiusDirectional.all(
              Radius.circular(20),
            ),
          ),
         //
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10 ,

          ),
          child: Text(
            'Flowers',
            style: TextStyle(
              fontSize: 30,
              color: Colors.deepPurple.withOpacity(.8),
            ),
          ),
        ),
        actions: [
          IconButton(
            padding: EdgeInsetsDirectional.only(end: 10),
            icon: Icon(
              Icons.arrow_back_outlined,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.teal ,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.all(
                    Radius.circular(20),
                  ),
                  color: Colors.white.withOpacity(.5) ,
                ),

                padding:EdgeInsetsDirectional.all(10)
                ,
                child: Text(
                  'Flowers Shop',
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       color: Colors.deepPurple,
                       fontSize: 40,
                     ),
                ),
              ),
              Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.all(
                          Radius.circular(20)
                        )
                      ),
                      clipBehavior:Clip.antiAliasWithSaveLayer,
                      width:200 ,
                      height: 150,
                      child: Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: [
                          Image(
                              image: NetworkImage(
                                'https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512__340.jpg',
                              ),
                            height: 150,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 2,
                            ) ,
                            width: double.infinity,
                            color: Colors.white.withOpacity(.7),
                            child: Text(
                              'Puple Flower',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.pink,
                                wordSpacing : 2,
                                letterSpacing: 3,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.all(
                              Radius.circular(20)
                          )
                      ),
                      clipBehavior:Clip.antiAliasWithSaveLayer,
                      width:200 ,
                      height: 150,
                      child: Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: [
                          Image(
                            image: NetworkImage(
                              'https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg',
                            ),
                            height: 150,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 2,
                            ) ,
                            width: double.infinity,
                            color: Colors.white.withOpacity(.7),
                            child: Text(
                              'White Flower',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.pink,
                                wordSpacing : 2,
                                letterSpacing: 3,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.all(
                                Radius.circular(20)
                            )
                        ),
                        clipBehavior:Clip.antiAliasWithSaveLayer,
                        width:200 ,
                        height: 150,
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Image(
                              image: NetworkImage(
                                'https://s7.favim.com/orig/150804/beautiful-colors-colors-flowers-rainbow-Favim.com-3059567.jpg',
                              ),
                              height: 150,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 2,
                              ) ,
                              width: double.infinity,
                              color: Colors.white.withOpacity(.7),
                              child: Text(
                                'Rainbow Flower',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.pink,
                                  wordSpacing : 2,
                                  letterSpacing: 3,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.all(
                                Radius.circular(20)
                            )
                        ),
                        clipBehavior:Clip.antiAliasWithSaveLayer,
                        width:200 ,
                        height: 150,
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Image(
                              image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREzQNx_JHakSrZVj-5md6QHWjwBPJ0eqAL5w&usqp=CAU',
                              ),
                              height: 150,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 2,
                              ) ,
                              width: double.infinity,
                              color: Colors.white.withOpacity(.7),
                              child: Text(
                                'Red Flower',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.pink,
                                  wordSpacing : 2,
                                  letterSpacing: 3,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.all(
                                Radius.circular(20)
                            )
                        ),
                        clipBehavior:Clip.antiAliasWithSaveLayer,
                        width:200 ,
                        height: 150,
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Image(
                              image: NetworkImage(
                                'https://gfx4arab.com/wp-content/uploads/2017/12/Green-flower-background-Stock-Photo.jpg',
                              ),
                              height: 150,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 2,
                              ) ,
                              width: double.infinity,
                              color: Colors.white.withOpacity(.7),
                              child: Text(
                                'Green Flower',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.pink,
                                  wordSpacing : 2,
                                  letterSpacing: 3,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.all(
                                Radius.circular(20)
                            )
                        ),
                        clipBehavior:Clip.antiAliasWithSaveLayer,
                        width:200 ,
                        height: 150,
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Image(
                              image: NetworkImage(
                                'https://blog.gardenloversclub.com/wp-content/uploads/2016/05/rose.jpg',
                              ),
                              height: 150,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 2,
                              ) ,
                              width: double.infinity,
                              color: Colors.white.withOpacity(.7),
                              child: Text(
                                'Black Flower',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.pink,
                                  wordSpacing : 2,
                                  letterSpacing: 3,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.all(
                                Radius.circular(20)
                            )
                        ),
                        clipBehavior:Clip.antiAliasWithSaveLayer,
                        width:200 ,
                        height: 150,
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Image(
                              image: NetworkImage(
                                'https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512__340.jpg',
                              ),
                              height: 150,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 2,
                              ) ,
                              width: double.infinity,
                              color: Colors.white.withOpacity(.7),
                              child: Text(
                                'Puple Flower',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.pink,
                                  wordSpacing : 2,
                                  letterSpacing: 3,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.all(
                                Radius.circular(20)
                            )
                        ),
                        clipBehavior:Clip.antiAliasWithSaveLayer,
                        width:200 ,
                        height: 150,
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Image(
                              image: NetworkImage(
                                'https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg',
                              ),
                              height: 150,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 2,
                              ) ,
                              width: double.infinity,
                              color: Colors.white.withOpacity(.7),
                              child: Text(
                                'White Flower',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.pink,
                                  wordSpacing : 2,
                                  letterSpacing: 3,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.all(
                                Radius.circular(20)
                            )
                        ),
                        clipBehavior:Clip.antiAliasWithSaveLayer,
                        width:200 ,
                        height: 150,
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Image(
                              image: NetworkImage(
                                'https://s7.favim.com/orig/150804/beautiful-colors-colors-flowers-rainbow-Favim.com-3059567.jpg',
                              ),
                              height: 150,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 2,
                              ) ,
                              width: double.infinity,
                              color: Colors.white.withOpacity(.7),
                              child: Text(
                                'Rainbow Flower',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.pink,
                                  wordSpacing : 2,
                                  letterSpacing: 3,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.all(
                                Radius.circular(20)
                            )
                        ),
                        clipBehavior:Clip.antiAliasWithSaveLayer,
                        width:200 ,
                        height: 150,
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Image(
                              image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREzQNx_JHakSrZVj-5md6QHWjwBPJ0eqAL5w&usqp=CAU',
                              ),
                              height: 150,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 2,
                              ) ,
                              width: double.infinity,
                              color: Colors.white.withOpacity(.7),
                              child: Text(
                                'Red Flower',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.pink,
                                  wordSpacing : 2,
                                  letterSpacing: 3,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.all(
                                Radius.circular(20)
                            )
                        ),
                        clipBehavior:Clip.antiAliasWithSaveLayer,
                        width:200 ,
                        height: 150,
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Image(
                              image: NetworkImage(
                                'https://gfx4arab.com/wp-content/uploads/2017/12/Green-flower-background-Stock-Photo.jpg',
                              ),
                              height: 150,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 2,
                              ) ,
                              width: double.infinity,
                              color: Colors.white.withOpacity(.7),
                              child: Text(
                                'Green Flower',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.pink,
                                  wordSpacing : 2,
                                  letterSpacing: 3,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.all(
                                Radius.circular(20)
                            )
                        ),
                        clipBehavior:Clip.antiAliasWithSaveLayer,
                        width:200 ,
                        height: 150,
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Image(
                              image: NetworkImage(
                                'https://blog.gardenloversclub.com/wp-content/uploads/2016/05/rose.jpg',
                              ),
                              height: 150,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 2,
                              ) ,
                              width: double.infinity,
                              color: Colors.white.withOpacity(.7),
                              child: Text(
                                'Black Flower',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.pink,
                                  wordSpacing : 2,
                                  letterSpacing: 3,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.all(
                                Radius.circular(20)
                            )
                        ),
                        clipBehavior:Clip.antiAliasWithSaveLayer,
                        width:200 ,
                        height: 150,
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Image(
                              image: NetworkImage(
                                'https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512__340.jpg',
                              ),
                              height: 150,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 2,
                              ) ,
                              width: double.infinity,
                              color: Colors.white.withOpacity(.7),
                              child: Text(
                                'Puple Flower',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.pink,
                                  wordSpacing : 2,
                                  letterSpacing: 3,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.all(
                                Radius.circular(20)
                            )
                        ),
                        clipBehavior:Clip.antiAliasWithSaveLayer,
                        width:200 ,
                        height: 150,
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Image(
                              image: NetworkImage(
                                'https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg',
                              ),
                              height: 150,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 2,
                              ) ,
                              width: double.infinity,
                              color: Colors.white.withOpacity(.7),
                              child: Text(
                                'White Flower',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.pink,
                                  wordSpacing : 2,
                                  letterSpacing: 3,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.all(
                                Radius.circular(20)
                            )
                        ),
                        clipBehavior:Clip.antiAliasWithSaveLayer,
                        width:200 ,
                        height: 150,
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Image(
                              image: NetworkImage(
                                'https://s7.favim.com/orig/150804/beautiful-colors-colors-flowers-rainbow-Favim.com-3059567.jpg',
                              ),
                              height: 150,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 2,
                              ) ,
                              width: double.infinity,
                              color: Colors.white.withOpacity(.7),
                              child: Text(
                                'Rainbow Flower',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.pink,
                                  wordSpacing : 2,
                                  letterSpacing: 3,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.all(
                                Radius.circular(20)
                            )
                        ),
                        clipBehavior:Clip.antiAliasWithSaveLayer,
                        width:200 ,
                        height: 150,
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Image(
                              image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREzQNx_JHakSrZVj-5md6QHWjwBPJ0eqAL5w&usqp=CAU',
                              ),
                              height: 150,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 2,
                              ) ,
                              width: double.infinity,
                              color: Colors.white.withOpacity(.7),
                              child: Text(
                                'Red Flower',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.pink,
                                  wordSpacing : 2,
                                  letterSpacing: 3,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.all(
                                Radius.circular(20)
                            )
                        ),
                        clipBehavior:Clip.antiAliasWithSaveLayer,
                        width:200 ,
                        height: 150,
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Image(
                              image: NetworkImage(
                                'https://gfx4arab.com/wp-content/uploads/2017/12/Green-flower-background-Stock-Photo.jpg',
                              ),
                              height: 150,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 2,
                              ) ,
                              width: double.infinity,
                              color: Colors.white.withOpacity(.7),
                              child: Text(
                                'Green Flower',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.pink,
                                  wordSpacing : 2,
                                  letterSpacing: 3,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.all(
                                Radius.circular(20)
                            )
                        ),
                        clipBehavior:Clip.antiAliasWithSaveLayer,
                        width:200 ,
                        height: 150,
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Image(
                              image: NetworkImage(
                                'https://blog.gardenloversclub.com/wp-content/uploads/2016/05/rose.jpg',
                              ),
                              height: 150,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 2,
                              ) ,
                              width: double.infinity,
                              color: Colors.white.withOpacity(.7),
                              child: Text(
                                'Black Flower',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.pink,
                                  wordSpacing : 2,
                                  letterSpacing: 3,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
