# Lagto_mobprog

<div align="center">
  <img src="https://upload.wikimedia.org/wikipedia/en/thumb/5/5e/National_University_Philippines_logo.svg/200px-National_University_Philippines_logo.svg.png" height="80"/>
  &nbsp;&nbsp;&nbsp;&nbsp;
  <img src="https://upload.wikimedia.org/wikipedia/en/thumb/5/5e/National_University_Philippines_logo.svg/200px-National_University_Philippines_logo.svg.png" height="80"/>

  <br/>

  **NATIONAL UNIVERSITY**  
  **COLLEGE OF COMPUTING AND INFORMATION TECHNOLOGIES**

  <br/>

  ![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
  ![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
</div>

---

## 📱 Lab Activity 1: Facebook UI Replication

**Course:** Mobile Programming  
**Student:** Harry Lagto  
**Institution:** National University — College of Computing and Information Technologies  

---

## 📋 Discussion

### Laboratory Discussion
**Discuss how you integrate the Image to the `newsfeed_card.dart` and make it dynamic whether it has image or not.**

In `newsfeed_card.dart`, the image is integrated dynamically using two nullable properties: `bool? hasImage` and `String? imageUrl` passed into the `NewsfeedCard` widget.

The logic works as follows:

- If `hasImage == true`, the widget renders a dedicated `PostImageWidget` which uses `Image.network()` to load the image from the provided `imageUrl`.
- If `hasImage` is null or false, it renders a `SizedBox.shrink()` which takes up zero space, effectively hiding the image area entirely.

Inside `PostImageWidget`, the image is wrapped in a `ClipRRect` for rounded corners and uses `BoxFit.cover` to fill the container properly. A `loadingBuilder` shows a `CircularProgressIndicator` while the image loads, and an `errorBuilder` displays a fallback broken image icon in case the URL fails.

This approach keeps the `NewsfeedCard` widget fully reusable — posts without images simply omit `hasImage` and `imageUrl`, and the widget handles both cases cleanly without any layout issues.

---

## ✅ Enhancements Applied

| # | Enhancement | Description |
|---|---|---|
| 1 | **Post Image Widget** | Created a dedicated `PostImageWidget` class using `Image.network()` with dynamic `imageUrl`, a loading indicator, and an error fallback. |
| 2 | **Avatar Widget** | Replaced `Icon(Icons.person)` with a `CircleAvatar` widget that accepts an optional `avatarUrl` via `NetworkImage`, falling back to a default grey avatar. |
| 3 | **Action Button Widgets** | Extracted `LikeButton`, `CommentButton`, and `ShareButton` as separate `StatelessWidget` classes, each accepting an `onPressed` callback for reusability. |

---

## 📸 Screenshots

### Before Enhancement
> *(Insert before screenshot here)*

### After Enhancement
> *(Insert after screenshot here)*

---

## 🔗 GitHub Repository

[GitHub Repository Link](https://github.com/yourusername/lagto_mobprog)

---

## 🛠️ Tech Stack

- Flutter 3.x
- Dart
- flutter_screenutil
- Material Design
