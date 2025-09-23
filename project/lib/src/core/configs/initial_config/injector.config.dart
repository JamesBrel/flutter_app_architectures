// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:file_picker/file_picker.dart' as _i388;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:image_cropper/image_cropper.dart' as _i183;
import 'package:image_picker/image_picker.dart' as _i183;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i161;
import 'package:shared_preferences/shared_preferences.dart' as _i460;
import 'package:shorebird_code_push/shorebird_code_push.dart' as _i624;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;
import 'package:terminate_restart/terminate_restart.dart' as _i522;

import '../../../routes/app_router.dart' as _i1044;
import '../../services/cache/secure_storage_service.dart' as _i121;
import '../../services/cache/shared_prefs_service.dart' as _i153;
import '../../services/dio/http_dio_service.dart' as _i134;
import '../../services/files_picker/files_picker_service.dart' as _i838;
import '../../services/image/image_service.dart' as _i338;
import '../../services/jwt/jwt_service.dart' as _i769;
import '../../services/security/security_service.dart' as _i574;
import '../../services/supabase/supabase_service.dart' as _i607;
import 'instances_config.dart' as _i223;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final instances = _$Instances();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => instances.prefs,
      preResolve: true,
    );
    await gh.factoryAsync<_i454.Supabase>(
      () => instances.supabase,
      preResolve: true,
    );
    gh.lazySingleton<_i161.InternetConnection>(() => instances.internetChecker);
    gh.lazySingleton<_i1044.AppRouter>(() => instances.router);
    gh.lazySingleton<_i558.FlutterSecureStorage>(() => instances.secureStorage);
    gh.lazySingleton<_i361.Dio>(() => instances.dio);
    gh.lazySingleton<_i388.FilePicker>(() => instances.filePicker);
    gh.lazySingleton<_i183.ImagePicker>(() => instances.imagePicker);
    gh.lazySingleton<_i183.ImageCropper>(() => instances.imageCropper);
    gh.lazySingleton<_i454.SupabaseClient>(() => instances.supabaseClient);
    gh.lazySingleton<_i624.ShorebirdUpdater>(() => instances.shorebird);
    gh.lazySingleton<_i522.TerminateRestart>(() => instances.terminate);
    gh.lazySingleton<_i769.JwtService>(() => _i769.JwtService());
    gh.lazySingleton<_i574.SecurityService>(() => _i574.SecurityService());
    gh.lazySingleton<_i153.SharedPrefsService>(
      () => _i153.SharedPrefsService(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i338.ImageService>(
      () =>
          _i338.ImageService(gh<_i183.ImagePicker>(), gh<_i183.ImageCropper>()),
    );
    gh.lazySingleton<_i134.HttpDioService>(
      () => _i134.HttpDioService(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i607.SupabaseService>(
      () => _i607.SupabaseService(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i121.SecureStorageService>(
      () => _i121.SecureStorageService(gh<_i558.FlutterSecureStorage>()),
    );
    gh.lazySingleton<_i838.FilesPickerService>(
      () => _i838.FilesPickerService(gh<_i388.FilePicker>()),
    );
    return this;
  }
}

class _$Instances extends _i223.Instances {}
