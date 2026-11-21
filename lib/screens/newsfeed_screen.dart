import 'package:flutter/material.dart';
import 'package:lagto_mobprog/widget/newsfeed_card.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsfeedCard(
          userName: 'Steve Rogers',
          postContent: 'I can do this all day! #AvengersAssemble',
          date: 'October 11',
          numOfLikes: 10,
          numOfComments: 5,
          numOfShares: 2,
          avatarUrl: 'https://upload.wikimedia.org/wikipedia/en/3/35/Captain_America_in_comics.png',
        ),
        NewsfeedCard(
          userName: 'Tony Stark',
          postContent: 'I am Iron Man. #GeniusBillionairePlayboyPhilanthropist',
          date: 'December 1, 2023',
          numOfLikes: 3000,
          numOfComments: 42,
          numOfShares: 5,
          hasImage: true,
          imageUrl: 'https://upload.wikimedia.org/wikipedia/en/4/47/Iron_Man_%28circa_2018%29.png',
          avatarUrl: 'https://upload.wikimedia.org/wikipedia/en/4/47/Iron_Man_%28circa_2018%29.png',
        ),
      ],
    );
  }
}