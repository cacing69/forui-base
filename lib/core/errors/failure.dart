import 'package:equatable/equatable.dart';

class Failure extends Equatable implements Exception {
  final String message;
  final dynamic data;

  const Failure({required this.message, this.data = const {}});

  @override
  String toString() => message;

  @override
  List<Object?> get props => throw UnimplementedError();
}

class ServerFailure extends Failure {
  const ServerFailure({required super.message, super.data});
}
