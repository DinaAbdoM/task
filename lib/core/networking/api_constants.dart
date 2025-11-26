class ApiConstants {
  static const String baseUrl =
      'https://olivedrab-manatee-515331.hostingersite.com/api/';

  // Endpoints
  static const String filterCompanies = 'filter-companies';
  static const String cities = 'cities';
  static const String subCategories = 'sub-categoreis';

  // Pagination
  static const int defaultPageSize = 10;
  static const String pageParam = 'page';
  static const String limitParam = 'limit';
}

class ApiErrors {
  static const String badRequestError = "حدث خطأ في الطلب";
  static const String noContent = "لا يوجد محتوى";
  static const String forbiddenError = "غير مصرح لك بالوصول";
  static const String unauthorizedError = "غير مصرح";
  static const String notFoundError = "لم يتم العثور على البيانات";
  static const String conflictError = "حدث تعارض";
  static const String internalServerError = "خطأ في الخادم";
  static const String unknownError = "خطأ غير معروف";
  static const String timeoutError = "انتهت مهلة الاتصال";
  static const String defaultError = "حدث خطأ ما، حاول مرة أخرى";
  static const String cacheError = "خطأ في التخزين المؤقت";
  static const String noInternetError = "لا يوجد اتصال بالإنترنت";
  static const String loadingMessage = "جاري التحميل...";
  static const String retryAgainMessage = "حاول مرة أخرى";
  static const String ok = "حسناً";
}
