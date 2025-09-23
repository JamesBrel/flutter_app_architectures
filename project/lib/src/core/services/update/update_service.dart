// import 'package:shorebird_code_push/shorebird_code_push.dart';
// import 'package:terminate_restart/terminate_restart.dart';

// import '../../shared/constants/utils_const.dart';

// class UpdaterService {
//   final ShorebirdUpdater _updater;
//   final TerminateRestart _restarter;

//   UpdaterService(this._updater, this._restarter);

//   void init() async {
//     var _status = await _updater.checkForUpdate();
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
//   }
// }
