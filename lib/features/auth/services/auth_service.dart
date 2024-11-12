import 'package:injectable/injectable.dart';

@singleton
class AuthService {
  String? get userId => '12345';
  String? get email => 'test@test.com';
}