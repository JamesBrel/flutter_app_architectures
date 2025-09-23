// import 'package:dio/dio.dart';
// import 'package:injectable/injectable.dart';

// import 'http_exceptions.dart';

// @lazySingleton
// class HttpDioService {
//   final Dio _dio;

//   HttpDioService(this._dio);

//   Future<Response<T>> post<T>({
//     required String api,
//     Map<String, dynamic>? headers,
//     Map<String, dynamic>? queryParameters,
//     Object? content,
//     ResponseType responseType = ResponseType.json,
//   }) async {
//     try {
//       var response = await _dio.post<T>(
//         api,
//         data: content,
//         queryParameters: queryParameters,
//         options: Options(headers: headers, responseType: responseType),
//       );

//       // Vérification du statut HTTP
//       if (response.statusCode! >= 200 && response.statusCode! < 300) {
//         return response;
//       } else {
//         // Gestion des erreurs HTTP basées sur le status code
//         switch (response.statusCode) {
//           case 400:
//             throw BadRequestException(response.data);
//           case 401:
//             throw UnauthorizedException(response.data);
//           case 403:
//             throw ForbiddenException(response.data);
//           case 404:
//             throw NotFoundException(response.data);
//           case 500:
//             throw InternalServerErrorException(response.data);
//           default:
//             throw HttpException(
//               'HTTP error ${response.statusCode}',
//               response.statusCode!,
//             );
//         }
//       }
//     } on DioException catch (e) {
//       // Gestion spécifique des erreurs Dio
//       if (e.type == DioExceptionType.connectionTimeout ||
//           e.type == DioExceptionType.receiveTimeout) {
//         throw NetworkException('Connection timeout');
//       } else if (e.type == DioExceptionType.badResponse) {
//         // Les erreurs de réponse sont déjà traitées dans le bloc try
//         rethrow;
//       } else {
//         throw NetworkException('Network error: ${e.message}');
//       }
//     } catch (e) {
//       // Erreurs inattendues
//       throw UnexpectedException('Unexpected error: $e');
//     }
//   }

//   Future<Response<T>> get<T>({
//     required String api,
//     Map<String, dynamic>? headers,
//     Map<String, dynamic>? queryParameters,
//     ResponseType responseType = ResponseType.json,
//   }) async {
//     try {
//       var response = await _dio.get<T>(
//         api,
//         queryParameters: queryParameters,
//         options: Options(headers: headers, responseType: responseType),
//       );

//       // Vérification du statut HTTP
//       if (response.statusCode! >= 200 && response.statusCode! < 300) {
//         return response;
//       } else {
//         // Gestion des erreurs HTTP basées sur le status code
//         switch (response.statusCode) {
//           case 400:
//             throw BadRequestException(response.data);
//           case 401:
//             throw UnauthorizedException(response.data);
//           case 403:
//             throw ForbiddenException(response.data);
//           case 404:
//             throw NotFoundException(response.data);
//           case 500:
//             throw InternalServerErrorException(response.data);
//           default:
//             throw HttpException(
//               'HTTP error ${response.statusCode}',
//               response.statusCode!,
//             );
//         }
//       }
//     } on DioException catch (e) {
//       // Gestion spécifique des erreurs Dio
//       if (e.type == DioExceptionType.connectionTimeout ||
//           e.type == DioExceptionType.receiveTimeout) {
//         throw NetworkException('Connection timeout');
//       } else if (e.type == DioExceptionType.badResponse) {
//         // Les erreurs de réponse sont déjà traitées dans le bloc try
//         rethrow;
//       } else {
//         throw NetworkException('Network error: ${e.message}');
//       }
//     } catch (e) {
//       // Erreurs inattendues
//       throw UnexpectedException('Unexpected error: $e');
//     }
//   }

//   Future<Response<T>> put<T>({
//     required String api,
//     Map<String, dynamic>? headers,
//     Map<String, dynamic>? queryParameters,
//     Object? content,
//     ResponseType responseType = ResponseType.json,
//   }) async {
//     try {
//       var response = await _dio.post<T>(
//         api,
//         data: content,
//         queryParameters: queryParameters,
//         options: Options(headers: headers, responseType: responseType),
//       );

//       // Vérification du statut HTTP
//       if (response.statusCode! >= 200 && response.statusCode! < 300) {
//         return response;
//       } else {
//         // Gestion des erreurs HTTP basées sur le status code
//         switch (response.statusCode) {
//           case 400:
//             throw BadRequestException(response.data);
//           case 401:
//             throw UnauthorizedException(response.data);
//           case 403:
//             throw ForbiddenException(response.data);
//           case 404:
//             throw NotFoundException(response.data);
//           case 500:
//             throw InternalServerErrorException(response.data);
//           default:
//             throw HttpException(
//               'HTTP error ${response.statusCode}',
//               response.statusCode!,
//             );
//         }
//       }
//     } on DioException catch (e) {
//       // Gestion spécifique des erreurs Dio
//       if (e.type == DioExceptionType.connectionTimeout ||
//           e.type == DioExceptionType.receiveTimeout) {
//         throw NetworkException('Connection timeout');
//       } else if (e.type == DioExceptionType.badResponse) {
//         // Les erreurs de réponse sont déjà traitées dans le bloc try
//         rethrow;
//       } else {
//         throw NetworkException('Network error: ${e.message}');
//       }
//     } catch (e) {
//       // Erreurs inattendues
//       throw UnexpectedException('Unexpected error: $e');
//     }
//   }

//   Future<Response<T>> patch<T>({
//     required String api,
//     Map<String, dynamic>? headers,
//     Map<String, dynamic>? queryParameters,
//     required Object content,
//     ResponseType responseType = ResponseType.json,
//   }) async {
//     try {
//       var response = await _dio.post<T>(
//         api,
//         data: content,
//         queryParameters: queryParameters,
//         options: Options(headers: headers, responseType: responseType),
//       );

//       // Vérification du statut HTTP
//       if (response.statusCode! >= 200 && response.statusCode! < 300) {
//         return response;
//       } else {
//         // Gestion des erreurs HTTP basées sur le status code
//         switch (response.statusCode) {
//           case 400:
//             throw BadRequestException(response.data);
//           case 401:
//             throw UnauthorizedException(response.data);
//           case 403:
//             throw ForbiddenException(response.data);
//           case 404:
//             throw NotFoundException(response.data);
//           case 500:
//             throw InternalServerErrorException(response.data);
//           default:
//             throw HttpException(
//               'HTTP error ${response.statusCode}',
//               response.statusCode!,
//             );
//         }
//       }
//     } on DioException catch (e) {
//       // Gestion spécifique des erreurs Dio
//       if (e.type == DioExceptionType.connectionTimeout ||
//           e.type == DioExceptionType.receiveTimeout) {
//         throw NetworkException('Connection timeout');
//       } else if (e.type == DioExceptionType.badResponse) {
//         // Les erreurs de réponse sont déjà traitées dans le bloc try
//         rethrow;
//       } else {
//         throw NetworkException('Network error: ${e.message}');
//       }
//     } catch (e) {
//       // Erreurs inattendues
//       throw UnexpectedException('Unexpected error: $e');
//     }
//   }

//   Future<Response<T>> delete<T>({
//     required String api,
//     Map<String, dynamic>? headers,
//     Map<String, dynamic>? queryParameters,
//     ResponseType responseType = ResponseType.json,
//   }) async {
//     try {
//       var response = await _dio.delete<T>(
//         api,
//         queryParameters: queryParameters,
//         options: Options(headers: headers, responseType: responseType),
//       );

//       // Vérification du statut HTTP
//       if (response.statusCode! >= 200 && response.statusCode! < 300) {
//         return response;
//       } else {
//         // Gestion des erreurs HTTP basées sur le status code
//         switch (response.statusCode) {
//           case 400:
//             throw BadRequestException(response.data);
//           case 401:
//             throw UnauthorizedException(response.data);
//           case 403:
//             throw ForbiddenException(response.data);
//           case 404:
//             throw NotFoundException(response.data);
//           case 500:
//             throw InternalServerErrorException(response.data);
//           default:
//             throw HttpException(
//               'HTTP error ${response.statusCode}',
//               response.statusCode!,
//             );
//         }
//       }
//     } on DioException catch (e) {
//       // Gestion spécifique des erreurs Dio
//       if (e.type == DioExceptionType.connectionTimeout ||
//           e.type == DioExceptionType.receiveTimeout) {
//         throw NetworkException('Connection timeout');
//       } else if (e.type == DioExceptionType.badResponse) {
//         // Les erreurs de réponse sont déjà traitées dans le bloc try
//         rethrow;
//       } else {
//         throw NetworkException('Network error: ${e.message}');
//       }
//     } catch (e) {
//       // Erreurs inattendues
//       throw UnexpectedException('Unexpected error: $e');
//     }
//   }
// }
