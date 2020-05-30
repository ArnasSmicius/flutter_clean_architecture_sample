import 'package:data_connection_checker/data_connection_checker.dart';

/*
By hiding 3rd party library behind an interface you control,
there won't be much code to change if you would decide
to change that 3rd party library
*/
abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final DataConnectionChecker connectionChecker;

  NetworkInfoImpl(this.connectionChecker);

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}
