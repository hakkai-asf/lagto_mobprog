import 'package:flutter/material.dart';
import 'package:lagto_mobprog/constant.dart';
import 'package:lagto_mobprog/widget/notification_widget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appBackground,
      child: ListView.separated(
        itemCount: 20,
        separatorBuilder: (_, _) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final number = index + 1;
          return NotificationWidget(
            name: _names[index % _names.length],
            post: 'Post $number',
            description: _descriptions[index % _descriptions.length],
          );
        },
      ),
    );
  }
}

const _names = <String>[
  'Maya Cruz',
  'Noah Reyes',
  'Liam Santos',
  'Sofia Lim',
  'Ethan Garcia',
];

const _descriptions = <String>[
  'liked your post.',
  'commented on your update.',
  'shared your post.',
  'mentioned you in a comment.',
  'started following you.',
];
