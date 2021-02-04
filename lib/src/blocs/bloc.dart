import 'dart:async';

import 'package:login_bloc/src/blocs/validators.dart';

class Bloc extends Object with Validators {
  final _email = StreamController<String>.broadcast();
  final _password = StreamController<String>.broadcast();

  // add data to the stream
  Stream<String> get email =>
      _email.stream.asBroadcastStream().transform(validateEmail);
  Stream<String> get password =>
      _password.stream.asBroadcastStream().transform(validatePassword);

  // change data
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  dispose() {
    _email.close();
    _password.close();
  }
}

// new instance of bloc
final bloc = Bloc();
