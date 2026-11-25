import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lagto_mobprog/widget/custom_text.dart';

class NewsfeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int? numOfLikes;
  final int? numOfComments;
  final int? numOfShares;
  final bool? hasImage;
  final String? imageUrl;
  final String? avatarUrl;

  const NewsfeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    this.numOfLikes,
    this.numOfComments,
    this.numOfShares,
    this.hasImage,
    this.imageUrl,
    this.avatarUrl,
  });

  @override
  Widget build(BuildContext context) {
    final screenUtilSp = ScreenUtil().setSp(10);
    final screenUtilWidth = ScreenUtil().setWidth(10);
    final screenUtilFontUserNameSize = ScreenUtil().setSp(15);
    final screenUtilIconSize = ScreenUtil().setSp(15);

    return Card(
      margin: EdgeInsets.all(screenUtilSp),
      child: Padding(
        padding: EdgeInsets.all(screenUtilSp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // ── Header Row ──────────────────────────────────────────
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                // Enhancement 2: Avatar widget
CircleAvatar(
  radius: ScreenUtil().setSp(20),
  backgroundImage: avatarUrl != null
      ? NetworkImage(avatarUrl!)
      : const AssetImage('assets/images/default_avatar.png') as ImageProvider,
  backgroundColor: Colors.grey[300],
),

                SizedBox(width: screenUtilWidth),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: userName,
                      fontSize: screenUtilFontUserNameSize,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(
                          text: date,
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.grey,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(3)),
                        Icon(
                          Icons.public,
                          color: Colors.grey,
                          size: screenUtilIconSize,
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.more_horiz),
              ],
            ),

            SizedBox(height: ScreenUtil().setHeight(5)),

            // ── Post Content ─────────────────────────────────────────
            CustomText(
              text: postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            ),

            SizedBox(height: ScreenUtil().setHeight(5)),

            // Enhancement 1: Image widget area
            hasImage == true
                ? PostImageWidget(imageUrl: imageUrl)
                : const SizedBox.shrink(),

            SizedBox(height: ScreenUtil().setHeight(5)),

            // ── Like / Comment / Share counts ────────────────────────
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: '${numOfLikes ?? 0} Likes',
                  fontSize: ScreenUtil().setSp(11),
                  color: Colors.grey,
                ),
                Row(
                  children: [
                    CustomText(
                      text: '${numOfComments ?? 0} Comments',
                      fontSize: ScreenUtil().setSp(11),
                      color: Colors.grey,
                    ),
                    SizedBox(width: ScreenUtil().setWidth(8)),
                    CustomText(
                      text: '${numOfShares ?? 0} Shares',
                      fontSize: ScreenUtil().setSp(11),
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),

            Divider(),

            // Enhancement 3: Like / Comment / Share as widget-based buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LikeButton(onPressed: () {}),
                CommentButton(onPressed: () {}),
                ShareButton(onPressed: () {}),
              ],
            ),

            Divider(),

            // ── Comment Input Row ────────────────────────────────────
            Row(
              children: [
                CircleAvatar(
                  radius: ScreenUtil().setSp(14),
                  backgroundImage: avatarUrl != null
                      ? AssetImage(avatarUrl!) as ImageProvider
                      : const AssetImage('assets/images/default_avatar.png'),
                  backgroundColor: Colors.grey[300],
                ),
                SizedBox(width: ScreenUtil().setWidth(10)),
                Container(
                  padding: EdgeInsets.fromLTRB(
                    ScreenUtil().setWidth(10),
                    0,
                    0,
                    0,
                  ),
                  alignment: Alignment.centerLeft,
                  height: ScreenUtil().setHeight(25),
                  width: ScreenUtil().setWidth(300),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(
                      Radius.circular(ScreenUtil().setSp(10)),
                    ),
                  ),
                  child: CustomText(
                    text: 'Write a comment...',
                    fontSize: ScreenUtil().setSp(11),
                    color: Colors.grey,
                  ),
                ),
              ],
            ),

            SizedBox(height: ScreenUtil().setHeight(10)),
            CustomText(
              text: 'View all comments',
              fontSize: ScreenUtil().setSp(12),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

// ── Enhancement 1: Post Image Widget ──────────────────────────────────────────
class PostImageWidget extends StatelessWidget {
  final String? imageUrl;

  const PostImageWidget({super.key, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: ScreenUtil().setHeight(200),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(ScreenUtil().setSp(4)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(ScreenUtil().setSp(4)),
        child: imageUrl != null
            ? Image.asset(
                imageUrl!,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[200],
                    child: Icon(Icons.broken_image, color: Colors.grey),
                  );
                },
              )
            : Image.asset(
                'assets/images/iron_man.jpg',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[200],
                    child: Icon(Icons.broken_image, color: Colors.grey),
                  );
                },
              ),
      ),
    );
  }
}

// ── Enhancement 3: Like Button Widget ─────────────────────────────────────────
class LikeButton extends StatelessWidget {
  final VoidCallback onPressed;

  const LikeButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(Icons.thumb_up_outlined, color: Colors.grey[700]),
      label: CustomText(
        text: 'Like',
        fontSize: ScreenUtil().setSp(12),
        color: Colors.grey[700]!,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

// ── Enhancement 3: Comment Button Widget ──────────────────────────────────────
class CommentButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CommentButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(Icons.chat_bubble_outline, color: Colors.grey[700]),
      label: CustomText(
        text: 'Comment',
        fontSize: ScreenUtil().setSp(12),
        color: Colors.grey[700]!,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

// ── Enhancement 3: Share Button Widget ────────────────────────────────────────
class ShareButton extends StatelessWidget {
  final VoidCallback onPressed;

  const ShareButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(Icons.share_outlined, color: Colors.grey[700]),
      label: CustomText(
        text: 'Share',
        fontSize: ScreenUtil().setSp(12),
        color: Colors.grey[700]!,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}