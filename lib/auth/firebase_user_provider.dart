import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class NatureldisasterFirebaseUser {
  NatureldisasterFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

NatureldisasterFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<NatureldisasterFirebaseUser> natureldisasterFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<NatureldisasterFirebaseUser>(
      (user) {
        currentUser = NatureldisasterFirebaseUser(user);
        return currentUser!;
      },
    );
