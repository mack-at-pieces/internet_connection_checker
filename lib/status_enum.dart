part of internet_connection_checker;

/// Represents the status of the data connection.
/// Returned by [InternetConnectionChecker.connectionStatus]
enum InternetConnectionStatusEnum {
  /// connected to internet
  connected,

  /// disconnected from internet
  disconnected,
}
