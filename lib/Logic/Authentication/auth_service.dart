// import 'package:firebase_auth/firebase_auth.dart';
// import '../../UserModel.dart';

// class AuthService {
//   final FirebaseAuth _auth;

//   AuthService(this._auth);

//   Stream<User?> get authStateChanges => _auth.idTokenChanges();

//   Future<String> CreateUserWithEmailandPassword(EdaaUser user) async {
//     try {
//       await _auth.createUserWithEmailAndPassword(
//           email: user.userEmail, password: user.password);
//       return "Registered";
//     } catch (e) {
//       return "Not Regsitred";
//     }
//   }
// }
