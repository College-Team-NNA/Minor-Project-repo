import 'package:firebase_auth/firebase_auth.dart';

class UserDetail {
  String uid;
  String username;
  String email;
  String about =
      "Takimata sit sit ut amet aliquyam vero elitr diam, justo et amet lorem no gubergren est, sea at kasd rebum. Duo amet justo sadipscing sed nonumy. Ipsum sed consetetur lorem voluptua takimata.";
  Map<String, double> progress = {
    "assignment_done": 75,
    "total_assignment": 100,
    "lecture_done": 20,
    "total_lecture": 30
  };
  static List<chartdata> graph_1 = [
    chartdata("", 0),
    chartdata('Jan', 2),
    chartdata('Feb', 3),
    chartdata('Mar', 2),
    chartdata('Apr', 3.5),
    chartdata('May', 2.2),
    chartdata('Jun', 1.2),
    chartdata('Jul', 2),
  ];
  static List<chartdata> graph_2 = [
    chartdata('', 0),
    chartdata('Jan', 1),
    chartdata('Feb', 0),
    chartdata('Mar', 0),
    chartdata('Apr', 0),
    chartdata('May', 1),
    chartdata('Jun', 0),
    chartdata('Jul', 1),
  ];

  UserDetail({required this.email, required this.username})
      : uid = FirebaseAuth.instance.currentUser!.uid.toString();

  // void addDetail(
  //   Map<String, double> progress,
  //   List graph,
  //   String profilePic,
  // ) {
  //   this.progress = progress;
  // }

  Map<String, dynamic> toMap() {
    return {
      "uid": uid,
      "name": username,
      "email": email,
      "graph_1": graph_1,
      "graph_2": graph_2,
      "progress": progress,
    };
  }
}

class chartdata {
  String month = "";
  double data = 0;
  chartdata(month,data) {
    this.month=month;
    this.data=data;
  }

}
