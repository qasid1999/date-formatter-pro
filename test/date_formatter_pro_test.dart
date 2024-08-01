import 'package:flutter_test/flutter_test.dart';

import 'package:date_formatter_pro/date_formatter_pro.dart';

void main() {
  group('DateFormatter', () {
    test('toMMDDYYYY formats correctly', () {
      final date = DateTime(2024, 12, 23);
      expect(date.toMMDDYYYY(), '12/23/2024');
    });

    test('toDDMMMMYYYY formats correctly', () {
      final date = DateTime(2024, 7, 12);
      expect(date.toDDMMMMYYYY(), '12 July, 2024');
    });

    test('toYYYYMMDD formats correctly', () {
      final date = DateTime(2024, 4, 14);
      expect(date.toYYYYMMDD(), '2024-04-14');
    });
  });
}
