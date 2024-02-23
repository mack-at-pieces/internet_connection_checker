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
      const Duration DEFAULT_TIMEOUT = Duration(seconds: 10);
      final AddressCheckOptions tOptions = AddressCheckOptions(
        address: tInternetAddress,
        port: DEFAULT_PORT,
      );
      // Action - Act

      // Result - Assert
      expect(
        tOptions.toString(),
        'AddressCheckOptions($tInternetAddress, $DEFAULT_PORT, $DEFAULT_TIMEOUT)',
      );
    },
  );

  test('should allow only address', () {
    // Setup - Arrange
    final options = AddressCheckOptions(
      address: InternetAddress('1.1.1.1'),
    );

    // Result - Assert
    // Will pass if arguments are correct, as otherwise will have thrown
    expect(true, equals(true));
  });

  test('should allow only hostname', () {
    // Setup - Arrange
    final options = AddressCheckOptions(
      hostname: 'google.com',
    );

    // Result - Assert
    // Will pass if arguments are correct, as otherwise will have thrown
    expect(true, equals(true));
  });

  test('should not allow no address or hostname', () {
    // Setup - Arrange
    expect(() => AddressCheckOptions(), throwsA(isA<AssertionError>()));
  });

  test('should not allow both address and hostname', () {
    // Setup - Arrange
    expect(
      () => AddressCheckOptions(
        address: InternetAddress('1.1.1.1'),
        hostname: 'google.com',
      ),
      throwsA(
        isA<AssertionError>(),
      ),
    );
  });
}
