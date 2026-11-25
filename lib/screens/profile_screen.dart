import 'package:flutter/material.dart';
import 'package:lagto_mobprog/constant.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 48,
            backgroundColor: appPrimary,
            child: Icon(Icons.person, size: 54, color: appTextPrimary),
          ),
          SizedBox(height: 16),
          Text(
            'PulseBoard User',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 6),
          Text(
            'Connect. Share. Stay inspired.',
            style: TextStyle(color: appAccent),
          ),
        ],
      ),
    );
  }
}
