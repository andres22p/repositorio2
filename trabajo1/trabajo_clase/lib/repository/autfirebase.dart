import'package:firebase_auth/firebase_auth.dart';
import'package:google_sing_in/google_sing_in.dart';

class AutFirebase{
    final FirebaseAuth _auth= FirebaseAuth.instance;
    final GoogleSignIn googleSignIn= GoogleSignIn();

    Future<UserCredential> singIn()async{
        GoogleSignInAccount GoogleSignInAccount= await googleSignIn.singIn();
        GoogleSignInAuthentication gSA= await googleSignInAccount.authentication;

        UserCredential user = await _auth.signInWithCredential(GoogleAuthProvider.credential(idToken: gSA.idToken)),

        return user;
    }
}