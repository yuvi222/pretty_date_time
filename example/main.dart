import 'package:pretty_date_time/pretty_date_time.dart';

void main() {
  final now = DateTime.now();

  print(prettyDateTime(now.subtract(Duration(seconds: 30)))); // Just now
  print(prettyDateTime(now.subtract(Duration(minutes: 3)))); // 3 minutes ago
  print(prettyDateTime(now.subtract(Duration(hours: 5)))); // 5 hours ago
  print(prettyDateTime(now.subtract(Duration(days: 1)))); // Yesterday
  print(prettyDateTime(now.subtract(Duration(days: 10)))); // 1 weeks ago

  print(prettyDateTime(now.add(Duration(seconds: 45)))); // in a few seconds
  print(prettyDateTime(now.add(Duration(hours: 2)))); // in 2 hours
  print(prettyDateTime(now.add(Duration(days: 1)))); // Tomorrow

  // With custom reference time
  final reference = DateTime(2024, 01, 01, 12, 0, 0);
  final target = DateTime(2024, 01, 01, 11, 50, 0);
  print(prettyDateTime(target, reference: reference)); // 10 minutes ago
}
