<p align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/9/90/NU_wordmark.svg" alt="National University Philippines" width="360">
</p>

<p align="center">
  <strong>NATIONAL UNIVERSITY</strong><br>
  <strong>COLLEGE OF COMPUTING AND INFORMATION TECHNOLOGIES</strong>
</p>

# PulseBoard

**Course:** Mobile Programming  
**Student:** Harry Lagto  
**Institution:** National University, College of Computing and Information Technologies

PulseBoard is a Flutter social-media application developed for the Mobile
Programming laboratory activities. It contains a dynamic news feed,
notifications, and a profile screen using a custom navy, peach, and red color
palette.

## Laboratory Activity 1A: Facebook UI Replication

Activity 1A established the original social-media interface and introduced the
Flutter project structure and reusable widgets needed to reproduce the main
parts of a Facebook-style news feed.

Features completed:

- Facebook-style news feed layout
- Reusable post-card and custom-text widgets
- User details, post dates, and engagement values
- Like, Comment, and Share controls
- Optional post images and comment fields
- Responsive sizing through `flutter_screenutil`

### Activity 1A Discussion: Dynamic Post Images

The post image is controlled by the `hasImage` and `imageUrl` properties of
`NewsfeedCard`. When `hasImage` is true, the card creates a `PostImageWidget`.
When it is false, the image section is omitted so it does not occupy layout
space. `PostImageWidget` loads a supplied network image when available and
uses `BoxFit.cover` to fill its rounded container. Missing or failed image URLs
are handled by `errorBuilder`, which displays the built-in post placeholder.
This keeps the post card reusable for posts with an image, a placeholder, or
no image.

## Laboratory Activity 2: Dynamic Posts and Notification Screen Enhancement

Activity 2 extends the original interface with data-driven posts,
notifications, navigation, branding, and a custom visual theme.

Enhancements completed:

- Ten posts with different names, dates, content, and engagement values
- Posts that can show a remote image, a placeholder, or no image
- Twenty dynamically generated notifications
- Dynamic app-bar titles for each selected screen
- Feed, Notifications, and Profile bottom-navigation items
- Application name changed to PulseBoard
- Custom palette using `#181A2F`, `#242E49`, `#37415C`, `#FDA481`,
  `#B4182D`, and `#54162B`

### Activity 2 Discussion: Managing Posts and Notifications Efficiently

Posts are represented by immutable data objects stored in a list. A
`ListView.builder` creates only the visible post cards, avoiding manually
duplicated widgets and remaining efficient as the feed grows. Notifications
follow the same approach: a `ListView.separated` builds twenty rows from
reusable name and description lists. The reusable `NewsfeedCard` and
`NotificationWidget` components keep the data separate from its presentation.

### Activity 2 Discussion: Accomplishments and Challenges

The project now contains ten data-driven posts, twenty notifications, optional
post images with a built-in placeholder, a dynamic app-bar title, and an
expanded bottom navigation bar. The app was renamed and restyled using a
consistent custom palette. Missing or failed network images are handled by an
`errorBuilder`, which displays the local placeholder instead of leaving a
broken image. Shared colors are centralized in `constant.dart`, making the
theme easier to maintain and apply consistently.

## Technologies Used

- Flutter
- Dart
- Material Design
- `flutter_screenutil`

## Repository

[GitHub repository](https://github.com/hakkai-asf/lagto_mobprog)
