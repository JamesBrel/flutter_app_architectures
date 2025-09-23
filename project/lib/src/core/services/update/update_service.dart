// import 'package:flutter/material.dart';


// import 'package:get/get.dart';
// import 'package:shorebird_code_push/shorebird_code_push.dart';
// import 'package:terminate_restart/terminate_restart.dart';

// import '../../../routes/app_router.dart';
// import '../../configs/lang_config/translate_keys.dart';
// import '../../shared/constants/utils_const.dart';

// class UpdaterService extends GetxService {
//   final ShorebirdUpdater _updater;
//   final TerminateRestart _restarter;


//   UpdateService(this._updater, this._restarter);

//   @override
//   void onInit() async {
//         var _status = await _updater.checkForUpdate();
//     if (_status == UpdateStatus.outdated) {
//       _updater.update().whenComplete(
//         () async => await _restarter.restartApp(
//           options: const TerminateRestartOptions(terminate: true),
//         ),
//       );
//     } else if (_status == UpdateStatus.upToDate) {
//       print('${Utils.appName} is up to date.');
//       return;
//     } else {
//       print('Failed to check for updates. Status: $_status');
//       return;
//     }
//     super.onInit();
//   }
// }
