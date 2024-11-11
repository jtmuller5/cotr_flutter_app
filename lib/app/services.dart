import 'package:cotr_flutter_app/app/get_it.dart';
import 'package:cotr_flutter_app/app/router.dart';
import 'package:shared_preferences/shared_preferences.dart';

AppRouter get router => getIt.get<AppRouter>();
SharedPreferences get sharedPrefs => getIt.get<SharedPreferences>();