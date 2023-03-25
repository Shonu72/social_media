import 'user_model.dart';

enum PostType{image, video, audio }

class Post{
  final String id;
  final User user;
  final PostType type;
  final String caption;
  final String assetPath;

  Post({
    required this.id,
    required this.user,
    required this.type,
    required this.caption,
    required this.assetPath});

static List<Post> posts = [
  Post(
    id: '1',
    user: User.users[0],
    type: PostType.video,
    caption:
    'Lorem ipsum dolor sit amet, facilisis dignissim risus.',
    assetPath: 'assets/video/v1.mp4',
  ),
  Post(
      id: '2',
      user: User.users[2],
      type: PostType.video,
      caption: 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit',
      assetPath: 'assets/video/v2.mp4'
  ),
  Post(
      id: '3',
      user: User.users[3],
      type: PostType.video,
      caption: 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit',
      assetPath: 'assets/video/v2.mp4'
  ),
  Post(
      id: '4',
      user: User.users[0],
      type: PostType.video,
      caption: 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit',
      assetPath: 'assets/video/v5.mp4'
  ),
  Post(
      id: '5',
      user: User.users[1],
      type: PostType.video,
      caption: 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit',
      assetPath: 'assets/video/v1.mp4'
  ),
];
}