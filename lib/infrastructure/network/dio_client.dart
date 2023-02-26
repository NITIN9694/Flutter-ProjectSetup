// // ignore: import_of_legacy_library_into_null_safe
// import 'package:dio/dio.dart';

// import '../models/geolocation_model.dart';
// import '../shared/dio_logger.dart';
// import 'api_end_points.dart';

// class DioClient {

//   Dio _dio = Dio();
//   DioError? _dioError;
//   var apiEndPoints = ApiEndPoints();
//   var tag = 'ApiProvider';
//   int count = 0;

//   /// with token interceptor
//   DioClient.gBase({remoteBaseUrl, deviceToken}) {
//     var baseUrl = remoteBaseUrl ?? 'http://gsmarena-api.herokuapp.com/';//apiEndPoints.gBaseUrl;
//     BaseOptions dioOptions = BaseOptions(
//         connectTimeout: 60000,
//         // 10 seconds
//         receiveTimeout: 60000,
//         receiveDataWhenStatusError: true,
//         followRedirects: false,
//         baseUrl: baseUrl);
//     _dio = Dio(dioOptions);
//     _dio.interceptors.add(InterceptorsWrapper(
//       onRequest: (RequestOpt options, handler) {
//       print(deviceToken);
//       DioLogger.onSend(tag, options);
//       if (deviceToken != null && deviceToken != '') {
//         options.headers = {'token': deviceToken, 'Content-Type': 'application/json'};
//       } else {
//         options.headers = {'Content-Type': 'application/json'};
//       }
//       return handler.next(options);
//     }, onResponse: (Response response, handler) {
//       DioLogger.onSuccess(tag, response);
//       return handler.next(response);
//     }, onError: (DioError error, handler) async {
//       _dioError = error;
//       return handler.next(error);
//     }));
//   }

//   DioClient.mapBase() {
//     var baseUrl = 'https://maps.googleapis.com/maps/api/';
//     BaseOptions dioOptions = BaseOptions(
//         connectTimeout: 60000,
//         receiveTimeout: 60000,
//         receiveDataWhenStatusError: true,
//         followRedirects: false,
//         baseUrl: baseUrl);
//     _dio = Dio(dioOptions);
//     _dio.interceptors.add(InterceptorsWrapper(onRequest: (
//       RequestOptions options, handler) {
//       DioLogger.onSend(tag, options);
//       options.headers = {'Content-Type': 'application/json'};
//       return handler.next(options);
//     }, onResponse: (Response response, handler) {
//       DioLogger.onSuccess(tag, response);
//       return handler.next(response);
//     }, onError: (DioError error, handler) async {
//       _dioError = error;
//       return handler.next(error);
//     }));
//   }

//   Future fetchGeoLocationApi(params) async {
//     try {
//       Response response = await _dio.get('geocode/json?',queryParameters: params);
//       return GeoLocationModel.fromJson(response.data);
//     } catch (error, stacktrace) {
//       apiEndPoints.handleException(error, stacktrace, _dioError!);
//     }
//   }

//   Future fetchBrandsApi() async {
//     try {
//       Response response = await _dio.get('brands');
//       Map<String, dynamic> data = {'data': []};
//       if(response.data != null){
//         data = {'data': response.data};
//       }
//       print(response);
//       return null;
//     } catch (error, stacktrace) {
//       apiEndPoints.handleException(error, stacktrace, _dioError!);
//     }
//   }



// }
