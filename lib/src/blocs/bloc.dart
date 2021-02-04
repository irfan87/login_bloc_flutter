import 'dart:async';
import 'package:rxdart/rxdart.dart';

import 'package:login_bloc/src/blocs/validators.dart';

class Bloc extends Object with Validators {
  final _email = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();

  // add data to the stream
  Stream<String> get email =>
      _email.stream.asBroadcastStream().transform(validateEmail);
  Stream<String> get password =>
      _password.stream.asBroadcastStream().transform(validatePassword);

  // submit the form that contains email and password as true
  Stream<bool> get submitValid =>
      Rx.combineLatest2(email, password, (email, password) => true);

  // change data
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  // submit function for email and password
  submit() {
    final validEmail = _email.value;
    final validPassword = _password.value;

    print('$validEmail and $validPassword is good to go');
  }

  dispose() {
    _email.close();
    _password.close();
  }
}
