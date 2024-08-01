import 'package:firebase_auth/firebase_auth.dart';

class UserDetail {
  String uid;
  String username;
  String email;
  Map<String, double>? progress;
  Map<String, double>? graph;
  int? rank;
  String? profilePic;
  List? recentPhotos;

  UserDetail({required this.email, required this.username})
      : uid = FirebaseAuth.instance.currentUser!.uid.toString();

  void addDetail(
    Map<String, double> progress,
    Map<String, double> graph,
    int rank,
    String profilePic,
  ) {
    this.graph = graph;
    this.progress = progress;
    this.rank = rank;
    this.profilePic = profilePic;
  }

  Map<String, dynamic> toMap() {
    return {
      "uid": uid,
      "name": username,
      "email": email,
      "graph": graph,
      "progress": progress,
      "rank": rank,
      "profilePic": profilePic,
    };
  }
}
