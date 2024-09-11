
## DateFormatter
A Flutter package that provides easy-to-use date formatting extensions for the DateTime class.
Format dates into different styles such as 12/23/2024, 12 July, 2024, and 2024-04-14 with simple
method calls.

## Features
Format dates to MM/dd/yyyy (e.g., 12/23/2024)
Format dates to dd MMMM, yyyy (e.g., 12 July, 2024)
Format dates to yyyy-MM-dd (e.g., 2024-04-14)
Getting started
To start using the DateFormatter package, add it to your pubspec.yaml:

## dependencies:
date_formatter: ^0.0.1

## Usage
Import the package and use the provided extensions to format dates:

## dart
Copy code
import 'package:date_formatter/date_formatter.dart';

void main() {
DateTime date = DateTime(2024, 7, 12);

print(date.toMMDDYYYY()); // Output: 07/12/2024
print(date.toDDMMMMYYYY()); // Output: 12 July, 2024
print(date.toYYYYMMDD()); // Output: 2024-07-12
}

## Additional information
For more information, visit the documentation.

## Contributing
Contributions are welcome! Please see the [contributing guidelines](https://github.com/your-username/your-repo/blob/main/CONTRIBUTING.md) for more information.

## Issues
If you encounter any issues, please file them [here](https://github.com/qasid1999/date-formatter-pro/issues).