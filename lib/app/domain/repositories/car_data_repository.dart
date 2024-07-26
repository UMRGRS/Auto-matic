import 'package:auto_matic/app/domain/models/car_data.dart';
import 'package:auto_matic/app/domain/responses/update_car_response.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class CarDataRepository {
  Stream<QuerySnapshot> getStaticSnapshots();
  Stream<DocumentSnapshot> getDocumentSnapshot(DocumentReference reference);
  Future<UpdateCarResponse>  updateDocument(DocumentReference reference, CarData data);
  //Change to delete document response
  //void deleteDocument(DocumentReference reference);
}
