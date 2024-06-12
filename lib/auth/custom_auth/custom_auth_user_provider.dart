import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class BackOfficeTamplateAuthUser {
  BackOfficeTamplateAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserDataStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<BackOfficeTamplateAuthUser> backOfficeTamplateAuthUserSubject =
    BehaviorSubject.seeded(BackOfficeTamplateAuthUser(loggedIn: false));
Stream<BackOfficeTamplateAuthUser> backOfficeTamplateAuthUserStream() =>
    backOfficeTamplateAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
