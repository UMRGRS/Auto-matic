import 'package:auto_matic/app/UI/global_controllers/session_controller.dart';
import 'package:auto_matic/app/domain/models/car_data.dart';
import 'package:auto_matic/app/domain/repositories/car_data_repository.dart';
import 'package:auto_matic/app/domain/responses/update_car_response.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CarDataRepositoryImpl implements CarDataRepository {
  final FirebaseFirestore _firestore;
  final _sessionProvider = sessionProvider.read;

  CarDataRepositoryImpl(this._firestore);

  @override
  Stream<QuerySnapshot> getStaticSnapshots() {
    final uID = _sessionProvider.user!.uid;
    final stream = _firestore
        .collection('vehicleStatic')
        .where("userUID", isEqualTo: uID)
        .snapshots();
    return stream;
  }

  @override
  Future<UpdateCarResponse> updateDocument(
      DocumentReference reference, CarData data) async {
    reference.update(data.toFirestore()).then(
        (value) => print("DocumentSnapshot successfully updated!"),
        onError: (e) => print("Error updating document $e"));
    return UpdateCarResponse(error: null);
  }

  @override
  Stream<DocumentSnapshot> getDocumentSnapshot(
      DocumentReference<Object?> reference) {
    return reference.snapshots();
  }
}
