// import 'dart:async';

// import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

// class ConnectivityService {
//   final InternetConnection _internetChecker;

//   ConnectivityService(this._internetChecker);

//   var isConnected = false;
//   late StreamSubscription<InternetStatus> subscription;

//   void init() async {
//     var initialStatus = await _internetChecker.internetStatus;
//     updateInternetStatus(initialStatus);
//     _internetChecker.onStatusChange.listen(
//       (InternetStatus status) => updateInternetStatus(status),
//     );
//   }

//   void updateInternetStatus(InternetStatus result) {
//     var newValue = result == InternetStatus.connected;
//     if (isConnected != newValue) {
//       isConnected = newValue;
//     }
//   }

//   // Stream<bool> get connectivityStream {
//   //   var controller = StreamController<bool>();
//   //   isConnected.listen((value) {
//   //     controller.add(value);
//   //   });
//   //   // Écoute les changements futurs
//   //   controller.onCancel = () {
//   //     isConnected.close();
//   //   };
//   //   return controller.stream;
//   // }
// }
