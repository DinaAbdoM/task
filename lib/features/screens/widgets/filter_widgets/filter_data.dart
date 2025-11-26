// features/screens/models/filter_data.dart

abstract class FilterConstants {
  static const List<String> serviceOptions = [
    'إستشارات هندسية',
    'تصاميم واجهات خارجية',
    'تصاميم داخلية',
    'إشراف',
    'مساحة',
    'لاند سكيب',
  ];

  static const List<String> providerOptions = [
    'الأفراد',
    'المكاتب الهندسية',
  ];

  static const List<String> cityOptions = [
    'الرياض',
    'جدة',
    'مكه',
    'الدمام', // إضافة خيار لزيادة المرونة
  ];
}