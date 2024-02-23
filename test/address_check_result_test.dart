import 'dart:io';

import 'package:internet_connection_checker_2/internet_connection_checker.dart';
import 'package:test/test.dart';

void main() {
  test(
    'should verify toString() method',
    () {
      // Setup - Arrange
      final InternetAddress tInternetAddress = InternetAddress('1.1.1.1');
      const int DEFAULT_PORT = 43;
      const bool isSuccess = true;
      final AddressCheckOptions tOptions = AddressCheckOptions(
        address: tInternetAddress,
        port: DEFAULT_PORT,
      );

      final AddressCheckResult tResult =
          AddressCheckResult(tOptions, isSuccess: isSuccess);
      // Action - Act

      // Result - Assert
      expect(tResult.toString(), 'AddressCheckResult($tOptions, $isSuccess)');
    },
  );
}
