import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class ConvertDate {
  static String getFormatedDate(Timestamp time) {
    DateTime date = (time.toDate());
    return DateFormat('dd-MM-yyyy').format(date);
  }

  static String getNextServiceDate(Timestamp time) {
    DateTime date = (time.toDate());
    date = date.add(const Duration(days: 180));
    return DateFormat('dd-MM-yyyy').format(date);
  }

  static int daysBetween(Timestamp time) {
    DateTime dateFrom = (time.toDate());
    DateTime dateTo = dateFrom.add(const Duration(days: 180));
    return (dateTo.difference(DateTime.now()).inHours / 24).round();
  }

  static double getPer(Timestamp time) {
    double per = 100-(daysBetween(time) * 100 / 180);
    per = double.parse(per.toStringAsFixed(2));
    return per;
  }
}
