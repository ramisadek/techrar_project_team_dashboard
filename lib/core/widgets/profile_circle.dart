import 'package:flutter/material.dart';

class ProfileCircle extends StatelessWidget {
  final String avatarUrl;
  final bool isOnline;
  const ProfileCircle({super.key, required this.avatarUrl, required this.isOnline});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(radius: 30, backgroundImage: NetworkImage(avatarUrl)),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isOnline ? Colors.green : Colors.grey,
              border: Border.all(color: Colors.white, width: 2),
            ),
          ),
        ),
      ],
    );
  }
}
