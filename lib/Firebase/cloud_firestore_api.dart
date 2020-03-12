import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_1/Firebase/sign_in_with_google.dart';
import 'package:flutter_1/Place/Place.dart';
import 'package:flutter_1/Place/Places.dart';
import 'package:flutter_1/User/model/Users.dart';

class CloudFirestoreAPI {

  final String USERS = "users";
  final String PLACES = "places";

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
  void updatePlaceData(Places place) async{
    DocumentReference ref = _db.collection(PLACES).document(place.title);
    return ref.setData({
      'title':place.title,
      'photourl': place.photoUrl,
    'description': place.description,
    'location': place.addLocation,

    }, merge: true);
  }
  Future<void> DeleteUser(String UID){
   return _db.collection(USERS).document(UID).delete();

  }

  void getData() {
    _db
        .collection(USERS)
        .getDocuments().then((QuerySnapshot snapshot) {
      snapshot.documents.forEach((f) => print('${f.data}}'));

    });
  }

  }
