import 'package:random_x/random_x.dart';

class FactoryModel {
  static const name = 'NAME';
  static const email = 'EMAIL';
  static const phoneNumber = 'PHONE_NUMBER';
  static const address = 'ADDRESS';
  static const date = 'DATE';
  static const dateIncrementFrom = 'DATE_INCREMENT_FROM';
  static const dateDecrementFrom = 'DATE_DECREMENT_FROM';

  static List<dynamic> make({
    required String type,
    int count = 10,
    int length = 10,
    DateTime? startDate,
  }) {
    List<dynamic> res = [];

    if (type == name) {
      res.addAll(RndX.generateNames(count: count));
    }

    if (type == email) {
      res.addAll(RndX.generateEmail(count: count));
    }

    if (type == phoneNumber) {
      res.addAll(RndX.generatePhoneNumber(count: count));
    }

    if (type == address) {
      res.add(RndX.randomAddressList(count: count));
    }

    if (type == date) {
      res.addAll(RndX.generateRandomDates(count: count));
    }
    if (type == dateIncrementFrom) {
      throw UnimplementedError();

      // assert(startDate != null, 'Start date is required');
      // res.addAll(RndX.generateRandomDates(count: count, start: startDate));
    }

    if (type == dateDecrementFrom) {
      throw UnimplementedError();

      // assert(startDate != null, 'Start date is required');
      // res.addAll(RndX.generateRandomDates(count: count));
    }

    return res;
  }
}
