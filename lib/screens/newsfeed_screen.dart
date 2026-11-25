import 'package:flutter/material.dart';
import 'package:lagto_mobprog/constant.dart';
import 'package:lagto_mobprog/widget/newsfeed_card.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appBackground,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 6),
        itemCount: _posts.length,
        itemBuilder: (context, index) {
          final post = _posts[index];
          return NewsfeedCard(
            userName: post.userName,
            postContent: post.content,
            date: post.date,
            numOfLikes: post.likes,
            numOfComments: post.comments,
            numOfShares: post.shares,
            hasImage: post.hasImage,
            imageUrl: post.imageUrl,
          );
        },
      ),
    );
  }
}

class _PostData {
  const _PostData({
    required this.userName,
    required this.content,
    required this.date,
    required this.likes,
    required this.comments,
    required this.shares,
    this.hasImage = false,
    this.imageUrl,
  });

  final String userName;
  final String content;
  final String date;
  final int likes;
  final int comments;
  final int shares;
  final bool hasImage;
  final String? imageUrl;
}

const _posts = <_PostData>[
  _PostData(
    userName: 'Maya Cruz',
    content: 'Starting the week with a fresh set of goals.',
    date: 'November 25',
    likes: 42,
    comments: 8,
    shares: 3,
  ),
  _PostData(
    userName: 'Noah Reyes',
    content: 'Golden hour makes every walk better.',
    date: 'November 24',
    likes: 86,
    comments: 12,
    shares: 5,
    hasImage: true,
  ),
  _PostData(
    userName: 'Liam Santos',
    content: 'Finished our mobile programming activity!',
    date: 'November 23',
    likes: 61,
    comments: 15,
    shares: 4,
  ),
  _PostData(
    userName: 'Sofia Lim',
    content: 'Coffee, code, and a quiet afternoon.',
    date: 'November 22',
    likes: 104,
    comments: 19,
    shares: 7,
    hasImage: true,
    imageUrl:
        'https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?w=900',
  ),
  _PostData(
    userName: 'Ethan Garcia',
    content: 'Small progress is still progress.',
    date: 'November 21',
    likes: 73,
    comments: 9,
    shares: 10,
  ),
  _PostData(
    userName: 'Isla Mendoza',
    content: 'Sharing a snapshot from today’s campus event.',
    date: 'November 20',
    likes: 128,
    comments: 24,
    shares: 11,
    hasImage: true,
  ),
  _PostData(
    userName: 'Lucas Flores',
    content: 'What feature should we build next?',
    date: 'November 19',
    likes: 34,
    comments: 27,
    shares: 2,
  ),
  _PostData(
    userName: 'Ava Torres',
    content: 'The best ideas begin as rough sketches.',
    date: 'November 18',
    likes: 95,
    comments: 13,
    shares: 8,
    hasImage: true,
    imageUrl:
        'https://images.unsplash.com/photo-1517841905240-472988babdf9?w=900',
  ),
  _PostData(
    userName: 'Elijah Ramos',
    content: 'Remember to take a break and recharge.',
    date: 'November 17',
    likes: 57,
    comments: 6,
    shares: 6,
  ),
  _PostData(
    userName: 'Chloe Navarro',
    content: 'Celebrating a successful team presentation!',
    date: 'November 16',
    likes: 143,
    comments: 31,
    shares: 14,
    hasImage: true,
  ),
];
