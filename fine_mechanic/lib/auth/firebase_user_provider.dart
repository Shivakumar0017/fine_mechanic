import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FineMechanicFirebaseUser {
  FineMechanicFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

FineMechanicFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FineMechanicFirebaseUser> fineMechanicFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<FineMechanicFirebaseUser>(
            (user) => currentUser = FineMechanicFirebaseUser(user));
