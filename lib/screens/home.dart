import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/widgets/room_card.dart';
import 'package:untitled/widgets/user_profile_image.dart';

import '../data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.search,
              size: 28,color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.envelope_open,
                  size: 28,color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.calendar,
                  size: 28,color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.bell,
                  size: 28,color: Colors.black,
                )),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: UserProfileImage(
                  size: 35,
                  imageUrl: currentUser.imageURL,
                ),
              ),
            )
          ],
        ),
        body: Stack(children: [
          ListView(
            padding: EdgeInsets.all(20),
            children: [
              ...roomList.map((e) => RoomCard(room: e)),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
                    Theme.of(context).scaffoldBackgroundColor,
                  ])),
            ),
          ),
          Positioned(
            left: 105,
            right: 105,
            bottom: 50,
            child: ElevatedButton
                .icon(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                size: 20,
                color: Colors.white,
              ),
              label: Text(
                'Start a room',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(12),
                  primary: Theme.of(context).accentColor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
            ),
          )
        ]));
  }
}
