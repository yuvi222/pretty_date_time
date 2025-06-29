String prettyDateTime(DateTime dateTime, {DateTime? reference}) {
  final now = reference ?? DateTime.now();
  final diff = now.difference(dateTime);
  final isFuture = diff.isNegative;
  final absDiff = diff.abs();

  if (absDiff.inSeconds < 60) return isFuture ? "in a few seconds" : "Just now";
  if (absDiff.inMinutes < 60) {
    return isFuture
        ? "in ${absDiff.inMinutes} minutes"
        : "${absDiff.inMinutes} minutes ago";
  }
  if (absDiff.inHours < 24) {
    return isFuture
        ? "in ${absDiff.inHours} hours"
        : "${absDiff.inHours} hours ago";
  }
  if (absDiff.inDays == 1) return isFuture ? "Tomorrow" : "Yesterday";
  if (absDiff.inDays < 7) {
    return isFuture
        ? "in ${absDiff.inDays} days"
        : "${absDiff.inDays} days ago";
  }
  if (absDiff.inDays < 30) {
    return isFuture
        ? "in ${absDiff.inDays ~/ 7} weeks"
        : "${absDiff.inDays ~/ 7} weeks ago";
  }

  return dateTime.toLocal().toString().split(' ').first;
}
