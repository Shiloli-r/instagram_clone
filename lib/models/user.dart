class User {
  final String email;
  final String uid;
  final String photoUrl;
  final String username;
  final String bio;
  final List followers;
  final List following;

  const User({
    required this.bio,
    required this.email,
    required this.username,
    required this.uid,
    required this.photoUrl,
    required this.following,
    required this.followers,
  });

  // Methods to make this model more accessible
  Map<String, dynamic> toJson() => {
        "username": username,
        "uid": uid,
        "emai": email,
        "photoUrl": photoUrl,
        "bio": bio,
        "followers": followers,
        "following": following,
      };
}
