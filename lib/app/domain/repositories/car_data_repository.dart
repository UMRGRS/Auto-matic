import 'package:cloud_firestore/cloud_firestore.dart';

abstract class CarDataRepository {
  //Used in profile page
  Stream<QuerySnapshot> getStaticSnapshots();
}
