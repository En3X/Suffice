import 'package:firebase_auth/firebase_auth.dart';

class FirebaseService {
  String username, password;
  FirebaseService(this.username, this.password);
  final auth = FirebaseAuth.instance;
}
