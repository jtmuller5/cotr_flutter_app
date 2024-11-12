// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../features/auth/services/auth_service.dart' as _i413;
import '../features/shared/services/analytics_service.dart' as _i751;
import '../features/shared/services/modules.dart' as _i176;
import '../features/subscriptions/services/subscription_service.dart' as _i506;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  await gh.factoryAsync<_i460.SharedPreferences>(
    () => registerModule.sharedPrefs,
    preResolve: true,
  );
  gh.factory<_i751.AnalyticsService>(() => _i751.AnalyticsService());
  gh.singleton<_i413.AuthService>(() => _i413.AuthService());
  gh.singleton<_i506.SubscriptionService>(() => _i506.SubscriptionService());
  return getIt;
}

class _$RegisterModule extends _i176.RegisterModule {}
