import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:task/core/networking/api_constants.dart';

class DioFactory {
  /// يقوم بإنشاء وتهيئة مثيل Dio
  Dio create() {
    final Dio dio = Dio();

    // 1. إعداد الخيارات الأساسية (Timeouts و Base URL)
    dio
      ..options.connectTimeout = const Duration(seconds: 30)
      ..options.receiveTimeout = const Duration(seconds: 30)
      ..options.sendTimeout = const Duration(seconds: 30)
      ..options.baseUrl = ApiConstants.baseUrl;

    // 2. إعداد الـ Headers الثابتة
    dio.options.headers = {
      // 💡 يتم الاحتفاظ بـ Accept فقط.
      // Accept-Language يتم تمريره ديناميكياً عبر ApiService
      'Accept': 'application/json',
      'Accept-Language': 'ar',
      // 💡 يمكن إضافة 'Authorization: Token' هنا إذا كان تطبيقك يتطلب مصادقة (Auth)
    };

    // 3. إضافة الـ Interceptors
    _addInterceptors(dio);

    return dio;
  }

  void _addInterceptors(Dio dio) {
    // 💡 إضافة Logger للمراقبة (مهم في مرحلة التطوير)
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    );
  }
}
