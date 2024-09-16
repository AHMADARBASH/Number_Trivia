import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConntected;
}

class NetworkInfoImpl implements NetworkInfo {
  final InternetConnectionChecker connectionChecker;
  NetworkInfoImpl({required this.connectionChecker});

  ///test comment
  ///another test comment

  @override
  Future<bool> get isConntected async => await connectionChecker.hasConnection;
}
