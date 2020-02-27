import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_1/User/model/Users.dart';

class CloudFirestoreAPI {

  final String USERS = "users";

  final Firestore _db = Firestore.instance;

  void updateUserData(Users user) async{
    DocumentReference ref = _db.collection(USERS).document(user.uid);
    return ref.setData({
      'uid': user.uid,
      'name': user.name,
      'email': user.email,
      'photourl': user.photourl,

    }, merge: true);

  }
  }
