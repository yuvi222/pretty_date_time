import 'package:flutter_test/flutter_test.dart';
import 'package:pretty_date_time/pretty_date_time.dart';

void main() {
  final now = DateTime(2024, 1, 1, 12, 0, 0);

  test('Just now (less than 60 seconds)', () {
    final result = prettyDateTime(
      now.subtract(Duration(seconds: 30)),
      reference: now,
    );
    expect(result, "Just now");
  });

  test('5 minutes ago', () {
    final result = prettyDateTime(
      now.subtract(Duration(minutes: 5)),
      reference: now,
    );
    expect(result, "5 minutes ago");
  });

  test('in 10 minutes', () {
    final result = prettyDateTime(
      now.add(Duration(minutes: 10)),
      reference: now,
    );
    expect(result, "in 10 minutes");
  });

  test('Yesterday', () {
    final result = prettyDateTime(
      now.subtract(Duration(days: 1)),
      reference: now,
    );
    expect(result, "Yesterday");
  });

  test('Tomorrow', () {
    final result = prettyDateTime(now.add(Duration(days: 1)), reference: now);
    expect(result, "Tomorrow");
  });

  test('2 weeks ago', () {
    final result = prettyDateTime(
      now.subtract(Duration(days: 15)),
      reference: now,
    );
    expect(result, "2 weeks ago");
  });

  test('in 3 weeks', () {
    final result = prettyDateTime(now.add(Duration(days: 21)), reference: now);
    expect(result, "in 3 weeks");
  });

  test('Fallback to formatted date (older)', () {
    final oldDate = DateTime(2020, 1, 1);
    final result = prettyDateTime(oldDate, reference: now);
    expect(result, "2020-01-01");
  });
}
