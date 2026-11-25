import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lagto_mobprog/constant.dart';
import 'package:lagto_mobprog/widget/custom_text.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
    required this.name,
    required this.post,
    required this.description,
  });

  final String name;
  final String post;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appSurface,
      padding: EdgeInsets.all(ScreenUtil().setSp(15)),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: appPrimary,
            foregroundColor: appTextPrimary,
            child: Text(name.substring(0, 1)),
          ),
          SizedBox(width: ScreenUtil().setSp(10)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: name,
                  fontSize: ScreenUtil().setSp(16),
                  color: appTextPrimary,
                  fontWeight: FontWeight.w800,
                ),
                CustomText(
                  text: post,
                  fontSize: ScreenUtil().setSp(13),
                  color: appAccent,
                ),
                CustomText(
                  text: description,
                  fontSize: ScreenUtil().setSp(12),
                  color: appTextPrimary,
                  fontStyle: FontStyle.italic,
                ),
              ],
            ),
          ),
          const Icon(Icons.more_horiz, color: appAccent),
        ],
      ),
    );
  }
}
