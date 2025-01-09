import 'package:faker/faker.dart';

class History {
  final int bookingId;
  final DateTime date;
  final double income;
  final String status;
  History(
      {required this.bookingId,
      required this.date,
      required this.income,
      required this.status});
}

List<History> generateFakerHistory(int count) {
  var faker = Faker();
  List<History> historyList = [];
  for (int i = 0; i < count; i++) {
    historyList.add(
      History(
          bookingId: faker.randomGenerator.integer(10000, min: 1000),
          date: faker.date.dateTime(minYear: 2020, maxYear: 2024),
          income: faker.randomGenerator.decimal(min: 100.0, scale: 1000.0),
          status: faker.randomGenerator
              .element(['All', 'Completed', 'Pending', 'Rejected'])),
    );
  }
  return historyList;
}

List<History> history = generateFakerHistory(10);
