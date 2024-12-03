import 'package:cloud_firestore/cloud_firestore.dart';

String genChatID(String uid1, String uid2) {
  return uid1.compareTo(uid2) > 0 ? "{$uid1}_{$uid2}" : "{$uid2}_{$uid1}";
}

Future<String> createOrGetRoomRef(String uid1, String uid2) async {
  final chatId = genChatID(uid1, uid2);
  final chatRef =
      FirebaseFirestore.instance.collection("chat_rooms").doc(chatId);
  final doc = await chatRef.get();
  if (!doc.exists) {
    await chatRef.set({
      'participants': [uid1, uid2],
      'createdAt': FieldValue.serverTimestamp()
    });
  }

  return chatId;
}

Future<void> sendMessage(String chatId, String senderID, String message) async {
  final messageRef = FirebaseFirestore.instance
      .collection('chat_rooms')
      .doc(chatId)
      .collection('messages')
      .doc();

  await messageRef.set({
    'senderID': senderID,
    'message': message,
    'timestamp': FieldValue.serverTimestamp(),
  });
}

Stream<List<Map<String, dynamic>>> fetchMessages(String chatID) {
  return FirebaseFirestore.instance
      .collection('chat_rooms')
      .doc(chatID)
      .collection('messages')
      .orderBy('timestamp', descending: false)
      .snapshots()
      .map((snapshot) => snapshot.docs.map((doc) => doc.data()).toList());
}
