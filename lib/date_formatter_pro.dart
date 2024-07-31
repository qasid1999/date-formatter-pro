library date_formatter;

extension DateFormatterPro on DateTime {
  // Format: MM/dd/yyyy -> 12/23/2024
  String toMMDDYYYY() {
    final month = this.month.toString().padLeft(2, '0');
    final day = this.day.toString().padLeft(2, '0');
    final year = this.year.toString();
    return '$month/$day/$year';
  }

  // Format: dd MMMM, yyyy -> 12 July, 2024
  String toDDMMMMYYYY() {
    final day = this.day.toString().padLeft(2, '0');
    final month = _monthName(this.month);
    final year = this.year.toString();
    return '$day $month, $year';
  }

  // Format: yyyy-MM-dd -> 2024-04-14
  String toYYYYMMDD() {
    final month = this.month.toString().padLeft(2, '0');
    final day = this.day.toString().padLeft(2, '0');
    final year = this.year.toString();
    return '$year-$month-$day';
  }

  // Helper function to get the month name
  String _monthName(int month) {
    const monthNames = [
      'January', 'February', 'March', 'April', 'May', 'June',
      'July', 'August', 'September', 'October', 'November', 'December'
    ];
    return monthNames[month - 1];
  }
}
