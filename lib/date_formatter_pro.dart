library date_formatter;

extension DateFormatterPro on DateTime {
  /// Formats the [DateTime] object to a string in the format `MM/dd/yyyy`.
  ///
  /// Example:
  /// ```dart
  /// DateTime now = DateTime.now();
  /// String formattedDate = now.toMMDDYYYY();
  /// print(formattedDate); // Output: 12/23/2024
  /// ```
  String toMMDDYYYY() {
    final month = this.month.toString().padLeft(2, '0');
    final day = this.day.toString().padLeft(2, '0');
    final year = this.year.toString();
    return '$month/$day/$year';
  }

  /// Formats the [DateTime] object to a string in the format `dd MMMM, yyyy`.
  ///
  /// Example:
  /// ```dart
  /// DateTime now = DateTime.now();
  /// String formattedDate = now.toDDMMMMYYYY();
  /// print(formattedDate); // Output: 12 July, 2024
  /// ```
  String toDDMMMMYYYY() {
    final day = this.day.toString().padLeft(2, '0');
    final month = _monthName(this.month);
    final year = this.year.toString();
    return '$day $month, $year';
  }

  /// Formats the [DateTime] object to a string in the format `yyyy-MM-dd`.
  ///
  /// Example:
  /// ```dart
  /// DateTime now = DateTime.now();
  /// String formattedDate = now.toYYYYMMDD();
  /// print(formattedDate); // Output: 2024-04-14
  /// ```
  String toYYYYMMDD() {
    final month = this.month.toString().padLeft(2, '0');
    final day = this.day.toString().padLeft(2, '0');
    final year = this.year.toString();
    return '$year-$month-$day';
  }

  /// Helper function to get the full month name from a month number.
  ///
  /// This function takes a month number (1 for January, 12 for December)
  /// and returns the corresponding month name.
  String _monthName(int month) {
    const monthNames = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ];
    return monthNames[month - 1];
  }
}
