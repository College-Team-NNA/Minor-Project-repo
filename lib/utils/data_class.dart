import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';

class UserDetail {
  String uid;
  String username;
  String email;
  String? designation;
  String? about;
  String? website;
  String? phone;
  String? joindate;
  String? linkedin;
  String? instagram;
  String? meta;
  String? github;
  String? behance;

  static List<ChartData> graph_1 = [
    ChartData("", 0),
    ChartData('Jan', 2),
    ChartData('Feb', 3),
    ChartData('Mar', 2),
    ChartData('Apr', 3.5),
    ChartData('May', 2.2),
    ChartData('Jun', 1.2),
    ChartData('Jul', 2),
  ];
  static List<ChartData> graph_2 = [
    ChartData('', 0),
    ChartData('Jan', 1),
    ChartData('Feb', 0),
    ChartData('Mar', 0),
    ChartData('Apr', 0),
    ChartData('May', 1),
    ChartData('Jun', 0),
    ChartData('Jul', 1),
  ];

  UserDetail({
    required this.username,
    required this.email,
    this.designation,
    this.about,
    this.website,
    this.phone,
    this.joindate,
    this.linkedin,
    this.instagram,
    this.meta,
    this.github,
    this.behance,
  }) : uid = FirebaseAuth.instance.currentUser!.uid.toString();

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'username': username,
      'email': email,
      'designation': designation,
      'about': about,
      'website': website,
      'phone': phone,
      'joindate': joindate,
      'linkedin': linkedin,
      'instagram': instagram,
      'meta': meta,
      'github': github,
      'behance': behance,
    };
  }

  factory UserDetail.fromMap(Map<String, dynamic> map) {
    return UserDetail(
      username: map['username'] ?? '',
      email: map['email'] ?? '',
      designation: map['designation'],
      about: map['about'],
      website: map['website'],
      phone: map['phone'],
      joindate: map['joindate'],
      linkedin: map['linkedin'],
      instagram: map['instagram'],
      meta: map['meta'],
      github: map['github'],
      behance: map['behance'],
    );
  }
}

class ChartData {
  String month = "";
  double data = 0;
  ChartData(month, data) {
    this.month = month;
    this.data = data;
  }
}

class ProjectDetails {
  String? pUid;
  String? oUid;
  String? projectTitle;
  String? about;
  List? tags;
  List? toolsUsed;
  ProjectDetails({
    this.pUid,
    this.oUid,
    this.projectTitle,
    this.about,
    this.tags,
    this.toolsUsed,
  });

  Map<String, dynamic> toMap() {
    return {
      'pUid': pUid,
      'oUid': oUid,
      'projectTitle': projectTitle,
      'about': about,
      'tags': tags,
      'toolsUsed': toolsUsed,
    };
  }

  factory ProjectDetails.fromMap(Map<String, dynamic> map) {
    return ProjectDetails(
      pUid: map['pUid'],
      oUid: map['oUid'],
      projectTitle: map['projectTitle'],
      about: map['about'],
      tags: map['tags'],
      toolsUsed: map['toolsUsed'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProjectDetails.fromJson(String source) =>
      ProjectDetails.fromMap(json.decode(source));
}
