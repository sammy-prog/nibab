import 'package:firebase_auth/firebase_auth.dart';
import 'package:nibab/models/extractred_user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create extracteduser object(local) from User(firebase)
  // extracteduser abj is the return type
  ExtractedUser _userFromFirebase(User user) {
    return user != null ? ExtractedUser(uid: user.uid) : null;
  }


  // create a stream for authentication change
  Stream <ExtractedUser> get user {
    return _auth.authStateChanges()
      //.map((User user) => _userFromFirebase(user)); 
      // implied(passes the user from authStateChanges directly)
      .map(_userFromFirebase);
  }

  //sign-in anonymosuly

  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return _userFromFirebase(user);
    } catch(e) {
      print(e.toString());
      return null;
    }
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch(e) {
      print(e.toString());
      return null;
    }
  }
  
}