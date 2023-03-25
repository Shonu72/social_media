class User{
  final String id;
  final String username;
  final String imagePath;
  final int followers;
  final int followings;
  final int likes;

  User({
    required this.id,
    required this.username,
    required this.imagePath,
    this.followers = 0,
    this.followings = 0,
    this.likes = 0
  });
  static List<User> users = [
    User(
      id: '1',
      username: 'shourya',
      imagePath: 'assets/images/img.png',
      followers: 100,
      followings: 100,
      likes: 50,
    ),
    User(
    id:'2',
    username : 'Sonu',
      imagePath : 'assets/images/img5.jpeg',
      followers : 100,
      followings : 12,
      likes : 10,
  ),
    User(
      id:'3',
      username : 'ABC',
      imagePath : 'assets/images/img2.jpg',
      followers : 100,
      followings : 12,
      likes : 10,
    ),
    User(
      id:'4',
      username : 'abhi',
      imagePath : 'assets/images/img3.jpg',
      followers : 100,
      followings : 12,
      likes : 10,
    ),
    User(
      id:'5',
      username : 'Abhiii',
      imagePath : 'assets/images/img4.jpg',
      followers : 100,
      followings : 12,
      likes : 10,
    ),

  ];

}
