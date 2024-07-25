import 'package:auto_matic/app/UI/global_controllers/session_controller.dart';
import 'package:auto_matic/app/domain/repositories/car_data_repository.dart';
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
}
