import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/models/rooms.dart';
import 'package:untitled/screens/roomPage.dart';
import 'package:untitled/widgets/user_profile_image.dart';

class RoomCard extends StatelessWidget {
  final Room room;

  const RoomCard({Key? key, required this.room}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => RoomPage(room: room))),
      child: Padding(
        padding: const EdgeInsets.only(top: 6.0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "${room.club}🏠".toUpperCase(),
                style: Theme.of(context).textTheme.overline!.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                    ),
              ),
              Text(
                room.name,
                style: Theme.of(context).textTheme.overline!.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(children: [
                Expanded(
                  child: Container(
                      height: 100,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 28,
                            top: 24,
                            child: UserProfileImage(
                              size: 48,
                              imageUrl: room.speakers[0].imageURL,
                            ),
                          ),
                          UserProfileImage(
                            size: 48,
                            imageUrl: room.speakers[1].imageURL,
                          ),
                        ],
                      )),
                ),
                Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...room.speakers.map((e) => Text(
                                ' ${e.firstName},${e.lastName}💬',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(fontSize: 16),
                              )),
                          Text.rich(
                            TextSpan(children: [
                              TextSpan(
                                  text:
                                      "${room.speakers.length + room.followedBySpeakers.length} "),
                              const WidgetSpan(
                                child: Icon(
                                  CupertinoIcons.person_fill,
                                  size: 18,
                                  color: Colors.grey,
                                ),
                              ),
                              TextSpan(children: [
                                TextSpan(text: " / ${room.speakers.length} "),
                                const WidgetSpan(
                                  child: Icon(
                                    CupertinoIcons.chat_bubble_fill,
                                    size: 18,
                                    color: Colors.grey,
                                  ),
                                )
                              ]),
                            ]),
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    ))
              ])
            ]),
          ),
        ),
      ),
    );
  }
}
