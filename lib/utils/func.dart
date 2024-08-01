import 'package:firebase_storage/firebase_storage.dart';

link(String ch) async {
  return await FirebaseStorage.instance.ref().child(ch).getDownloadURL();
}
