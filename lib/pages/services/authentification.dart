import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  // Connexion avec Google
  Future<UserCredential?> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return null; // L'utilisateur a annulé la connexion.
      }

      final googleAuth = await googleUser.authentication;

      // Crée une nouvelle identifiant
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Une fois connecté, renvoie l'identifiant de l'utilisateur
      return await _auth.signInWithCredential(credential);
    } catch (e) {
      print("Erreur lors de la connexion avec Google : $e");
      return null;
    }
  }

  // État de l'utilisateur
  Stream<User?> get user => _auth.authStateChanges();
}
