
import 'package:equatable/equatable.dart';

enum Status { initial, loading, loaded }

class SplashScreenState extends Equatable {
  const SplashScreenState({
    this.status = Status.initial,
  });

  final Status status;

  SplashScreenState copyWith({
    Status? status,
  }) {
    return SplashScreenState(
      status: status ?? this.status,
    );
  }

  @override
  String toString() {
    return '''SplashScreenState { status: $status} }''';
  }

  @override
  List<Object> get props => [status];
}
