// import 'dart:convert';

// import 'package:injectable/injectable.dart';

// @lazySingleton
// class SecurityService {
//   String encrypt({required String data}) {
//     var bytes = utf8.encode(data);
//     var encrypted = base64.encode(bytes);
//     return encrypted;
//   }

//   String decrypt({required String dataEncrypted}) {
//     var bytes = base64.decode(dataEncrypted);
//     var decrypted = utf8.decode(bytes);
//     return decrypted;
//   }
// }
