import 'dart:ffi';

class Failure {
  final int code;
  final String message;

  Failure(this.code, this.message);
  @override
  String toString() {
    return message;
  }
}
