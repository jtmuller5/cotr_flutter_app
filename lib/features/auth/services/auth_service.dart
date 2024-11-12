import 'package:injectable/injectable.dart';

@singleton
class AuthService {
  String? get userId => '12345';
  String? get email => 'test@test.com';

  Future<void> loginWithEmailAndPassword(String email, String password) async {
    // Login logic
  }

  Future<void> signUpAnonymously() async {
    // Sign up logic
  }

  Future<void> signUpWithEmailAndPassword(String email, String password) async {
    // Sign up logic
  }

  Future<void> logout() async {
    // Logout logic
  }
}
