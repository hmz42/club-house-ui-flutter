import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/widgets/user_profile_image.dart';

import '../data.dart';

class RoomUserProfile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double size;
  final bool isNew;
  final bool isMuted;

  const RoomUserProfile(
      {Key? key,
      required this.imageUrl,
      required this.name,
     this.size=42,
       this.isNew=false,
       this.isMuted=false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          Padding(
            padding: const EdgeInsets.all(6),
            child: UserProfileImage(imageUrl: imageUrl, size: size),
          ),
          if (isNew)
            Positioned(
              child: Container(
                padding: EdgeInsets.all(4),
                child: Text(
                  '🎉',
                  style: TextStyle(fontSize: 20),
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      )
                    ]),
              ),
              left: 0,
              bottom: 0,
            ),
          if (isMuted)
            Positioned(
              child: Container(
                padding: EdgeInsets.all(4),
                child: Icon(
                  CupertinoIcons.mic_slash_fill,
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      )
                    ]),
              ),
              right: 0,
              bottom: 0,
            ),
        ]),
        Flexible(
            child: Text(
          name,
          overflow: TextOverflow.ellipsis,
        ))
      ],
    );
  }
}
