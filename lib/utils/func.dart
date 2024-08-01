import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:minor_project/utils/data_class.dart';

bool loggedIn() => (FirebaseAuth.instance.currentUser != null);

link(String ch) async {
  return await FirebaseStorage.instance.ref().child(ch).getDownloadURL();
}

void login(
    {required context,
    required TextEditingController ec,
    required TextEditingController pc}) async {
  String email = ec.text.trim();
  String password = pc.text;
  if (email == "" || password == "") {
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Please fill all details")));
  } else {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      if (userCredential.user != null) {
        Navigator.of(context)
            .pushNamedAndRemoveUntil("/portfolio", ModalRoute.withName('/'));
      }
    } on FirebaseAuthException catch (ex) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(ex.code.toString())));
    }
  }
}

void signup(
    {required context,
    required TextEditingController ec,
    required TextEditingController uc,
    required TextEditingController pc,
    required TextEditingController cpc}) async {
  String usr = uc.text;
  String pass = pc.text;
  String cpass = cpc.text;
  String email = ec.text.trim();
  const anydetail = SnackBar(content: Text("Please fill all the details !"));
  const nomail = SnackBar(content: Text("Kam se kam email toh dedo 👉👈"));
  const passMatch = SnackBar(content: Text("Password not matching"));

  if (email == "") {
    ScaffoldMessenger.of(context).showSnackBar(nomail);
  } else if (email == "" && usr == "" && pass == "") {
    ScaffoldMessenger.of(context).showSnackBar(anydetail);
  } else if (pass == cpass) {
    try {
      UserCredential createdUser = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: pass);

      if (createdUser.user != null) {
        UserDetail user = UserDetail(email: email, username: usr);
        await FirebaseFirestore.instance
            .collection("UserDetails")
            .doc(user.uid)
            .set(user.toMap());
        Navigator.pushNamedAndRemoveUntil(
            context, "/portfolio", ModalRoute.withName("/"));
      }
    } on FirebaseAuthException catch (ex) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(ex.code.toString())));
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(passMatch);
  }
}
