<h1 align="center">🕒 Pretty Date Time</h1>

<p align="center">
  Convert <code>DateTime</code> into human-friendly readable strings like “Just now”, “Yesterday”, “in 3 days”, etc.
</p>

# 📦 Installation

Add the following to your `pubspec.yaml` file:

```dart
dependencies:
  pretty_date_time: ^0.0.1
```

Then run:

```dart
flutter pub get
```

## 🚀 Getting Started
Import the package in your Dart file:

```dart
import 'package:pretty_date_time/pretty_date_time.dart';
```

## 🕒 Basic Example

```dart
final now = DateTime.now();
print(prettyDateTime(now.subtract(Duration(minutes: 5)))); 
// Output: "5 minutes ago"

print(prettyDateTime(now.add(Duration(hours: 3)))); 
// Output: "in 3 hours"
```

## ⏰ With Custom Reference Time

```dart
final reference = DateTime(2024, 01, 01, 12, 0, 0);
final target = DateTime(2024, 01, 01, 11, 50, 0);

print(prettyDateTime(target, reference: reference));
// Output: "10 minutes ago"
```

## ✅ Features
Supports past and future DateTime values

Pure Dart implementation

Zero dependencies

Works on Flutter and Dart CLI projects

## 💡 Contribution
Pull requests and issues are welcome! If you find a bug or want a feature, feel free to open an issue or contribute.

## Made with ❤️ by [yuvi222](https://github.com/yuvi222)
