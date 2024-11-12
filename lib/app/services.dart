import 'package:cotr_flutter_app/app/get_it.dart';
import 'package:cotr_flutter_app/app/router.dart';
import 'package:cotr_flutter_app/features/auth/services/auth_service.dart';
import 'package:cotr_flutter_app/features/shared/services/analytics_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

AnalyticsService get analyticsService => getIt.get<AnalyticsService>();
AppRouter get router => getIt.get<AppRouter>();
AuthService get authService => getIt.get<AuthService>();
SharedPreferences get sharedPrefs => getIt.get<SharedPreferences>();