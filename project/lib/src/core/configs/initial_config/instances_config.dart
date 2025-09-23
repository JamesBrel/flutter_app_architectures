import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:terminate_restart/terminate_restart.dart';

import '../../../routes/app_router.dart';
import '../../shared/constants/envs_const.dart';

@module
abstract class Instances {
  // @lazySingleton
  // InternetConnection get internetChecker => InternetConnection();

  @lazySingleton
  AppRouter get router => AppRouter();

  // @lazySingleton
  // FlutterSecureStorage get secureStorage => FlutterSecureStorage(
  //   aOptions: AndroidOptions(encryptedSharedPreferences: true),
  // );

  // @preResolve
  // Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  // @lazySingleton
  // Dio get dio => Dio(
  //     BaseOptions(
  //       baseUrl: Envs.baseUrl,
  //       connectTimeout: const Duration(seconds: 30),
  //       receiveTimeout: const Duration(seconds: 30),
  //       validateStatus: (statusCode) => true,
  //     ),
  //   )
  //   // ..interceptors.add(
  //   //   DioCacheInterceptor(
  //   //     options: CacheOptions(
  //   //       store: MemCacheStore(),
  //   //       policy: CachePolicy.request,
  //   //       priority: CachePriority.normal,
  //   //       maxStale: const Duration(days: 7),
  //   //       allowPostMethod: true,
  //   //     ),
  //   //   ),
  //   // )
  //   ..interceptors.add(
  //     PrettyDioLogger(
  //       requestHeader: true,
  //       requestBody: true,
  //       responseBody: true,
  //       responseHeader: false,
  //       error: true,
  //       compact: true,
  //       maxWidth: 90,
  //       enabled: kDebugMode,
  //     ),
  //   );

  // @lazySingleton
  // FilePicker get filePicker => FilePicker.platform;

  // @lazySingleton
  // ImagePicker get imagePicker => ImagePicker();

  // @lazySingleton
  // ImageCropper get imageCropper => ImageCropper();

  // @preResolve
  // Future<Supabase> get supabase => Supabase.initialize(
  //   url: Envs.supabaseUrl,
  //   anonKey: Envs.supabaseAnonKey,
  //   // authOptions: FlutterAuthClientOptions(localStorage: SupabaseSecurity()),
  // );

  // @lazySingleton
  // SupabaseClient get supabaseClient => Supabase.instance.client;

  // @lazySingleton
  // ShorebirdUpdater get shorebird => ShorebirdUpdater();

  // @lazySingleton
  // TerminateRestart get terminate => TerminateRestart.instance;

  // @preResolve
  // @lazySingleton
  // Future<ConnectivityService> get connectivity async {
  //   var service = ConnectivityService(getIt<InternetConnection>());
  //   service.init();
  //   return service;
  // }

  // @preResolve
  // @lazySingleton
  // Future<UpdaterService> get updater async {
  //   var service = UpdaterService(
  //     getIt<ShorebirdUpdater>(),
  //     getIt<TerminateRestart>(),
  //   );
  //   service.init();
  //   return service;
  // }
}
