import 'package:date_formatter_pro/date_formatter_pro.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DateFormatterExampleApp());
}

class DateFormatterExampleApp extends StatelessWidget {
  const DateFormatterExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Date Formatter Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const DateFormatterHomePage(),
    );
  }
}

class DateFormatterHomePage extends StatelessWidget {
  const DateFormatterHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Date Formatter Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("MM/dd/yyyy format: ${now.toMMDDYYYY()}"),
            Text("dd MMMM, yyyy format: ${now.toDDMMMMYYYY()}"),
            Text("yyyy-MM-dd format: ${now.toYYYYMMDD()}"),
          ],
        ),
      ),
    );
  }
}
