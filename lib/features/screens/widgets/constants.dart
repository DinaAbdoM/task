import 'package:flutter/material.dart';

// الألوان المستخدمة في التصميم (الرمادي، والأخضر المحتمل من صفحة الفلتر)
const Color kPrimaryColor = Color(0xFF4C874B); // افتراض لون أخضر داكن
const Color kLightGrey = Color(0xFFF5F5F5);
const Color kDarkGrey = Color(0xFF333333);
const Color kTextGrey = Color(0xFF757575);

// الأبعاد
const double kPadding = 16.0;
const double kCardRadius = 4.0;

// البيانات الوهمية (Mock Data)
class Property {
  final String title;
  final String description;
  final String imageUrl;
  final double rating;
  final IconData icon;
  final String subtitle;

  Property({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.rating,
    required this.icon,
    required this.subtitle,
  });
}

// final List<Property> mockProperties = [
//   Property(
//     title: 'مبنى السدر السكني',
//     description:
//         'ابحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب ',
//     imageUrl: 'https://picsum.photos/400/300?random=1',
//     rating: 4.5,
//     icon: Icons.location_on,
//     subtitle: "الرياض",
//   ),
//   Property(
//     title: 'مبنى الهدى الجديد',
//     description:
//         'ابحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب ',
//     imageUrl: 'https://picsum.photos/400/300?random=2',
//     rating: 5,
//     icon: Icons.location_on,
//     subtitle: 'الرياض',
//   ),
//   Property(
//     title: 'مبنى الأمير السكني',
//     description:
//         'ابحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب  هناهناهناهناهناهناهناهناهناهناهناهناهناهناهناهناهناهناهناهناهناهناهناهنا ',
//     imageUrl: 'https://picsum.photos/400/300?random=3',
//     rating: 5,
//     icon: Icons.location_on,
//     subtitle: 'الرياض',
//   ),
//   Property(
//     title: 'مبنى النور السكني',
//     description: 'ابحث عن شقتك هنا  ',
//     imageUrl: 'https://picsum.photos/400/300?random=4',
//     rating: 5,
//     icon: Icons.location_on,
//     subtitle: 'الرياض',
//   ),
//   Property(
//     title: 'مبنى النور السكني',
//     description:
//         'ابحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب ',
//     imageUrl: 'https://picsum.photos/400/300?random=4',
//     rating: 5,
//     icon: Icons.location_on,
//     subtitle: 'الرياض',
//   ),
//   Property(
//     title: 'مبنى النور السكني',
//     description:
//         'ابحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب ',
//     imageUrl: 'https://picsum.photos/400/300?random=4',
//     rating: 5,
//     icon: Icons.location_on,
//     subtitle: 'الرياض',
//   ),
//   Property(
//     title: 'مبنى النور السكني',
//     description:
//         'ابحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب ',
//     imageUrl: 'https://picsum.photos/400/300?random=4',
//     rating: 5,
//     icon: Icons.location_on,
//     subtitle: 'الرياض',
//   ),
//   Property(
//     title: 'مبنى النور السكني',
//     description:
//         'ابحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب ',
//     imageUrl: 'https://picsum.photos/400/300?random=4',
//     rating: 5,
//     icon: Icons.location_on,
//     subtitle: 'الرياض',
//   ),
//   Property(
//     title: 'مبنى النور السكني',
//     description:
//         'ابحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب ',
//     imageUrl: 'https://picsum.photos/400/300?random=4',
//     rating: 5,
//     icon: Icons.location_on,
//     subtitle: 'الرياض',
//   ),
//   Property(
//     title: 'مبنى النور السكني',
//     description:
//         'ابحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب ',
//     imageUrl: 'https://picsum.photos/400/300?random=4',
//     rating: 5,
//     icon: Icons.location_on,
//     subtitle: 'الرياض',
//   ),
//   Property(
//     title: 'مبنى النور السكني',
//     description:
//         'ابحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب ',
//     imageUrl: 'https://picsum.photos/400/300?random=4',
//     rating: 5,
//     icon: Icons.location_on,
//     subtitle: 'الرياض',
//   ),
//   Property(
//     title: 'مبنى النور السكني',
//     description:
//         'ابحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب ',
//     imageUrl: 'https://picsum.photos/400/300?random=4',
//     rating: 5,
//     icon: Icons.location_on,
//     subtitle: 'الرياض',
//   ),
//   Property(
//     title: 'مبنى النور السكني',
//     description:
//         'ابحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب ',
//     imageUrl: 'https://picsum.photos/400/300?random=4',
//     rating: 5,
//     icon: Icons.location_on,
//     subtitle: 'الرياض',
//   ),
//   Property(
//     title: 'مبنى النور السكني',
//     description:
//         'ابحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب ',
//     imageUrl: 'https://picsum.photos/400/300?random=4',
//     rating: 5,
//     icon: Icons.location_on,
//     subtitle: 'الرياض',
//   ),
//   Property(
//     title: 'مبنى النور السكني',
//     description:
//         'ابحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب ',
//     imageUrl: 'https://picsum.photos/400/300?random=4',
//     rating: 5,
//     icon: Icons.location_on,
//     subtitle: 'الرياض',
//   ),
//   Property(
//     title: 'مبنى النور السكني',
//     description:
//         'ابحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب ',
//     imageUrl: 'https://picsum.photos/400/300?random=4',
//     rating: 5,
//     icon: Icons.location_on,
//     subtitle: 'الرياض',
//   ),
//   Property(
//     title: 'مبنى النور السكني',
//     description:
//         'ابحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب ',
//     imageUrl: 'https://picsum.photos/400/300?random=4',
//     rating: 5,
//     icon: Icons.location_on,
//     subtitle: 'الرياض',
//   ),
//   Property(
//     title: 'مبنى النور السكني',
//     description:
//         'ابحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب ',
//     imageUrl: 'https://picsum.photos/400/300?random=4',
//     rating: 5,
//     icon: Icons.location_on,
//     subtitle: 'الرياض',
//   ),
//   Property(
//     title: 'مبنى النور السكني',
//     description:
//         'ابحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب ',
//     imageUrl: 'https://picsum.photos/400/300?random=4',
//     rating: 5,
//     icon: Icons.location_on,
//     subtitle: 'الرياض',
//   ),
//   Property(
//     title: 'مبنى النور السكني',
//     description:
//         'ابحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب ',
//     imageUrl: 'https://picsum.photos/400/300?random=4',
//     rating: 5,
//     icon: Icons.location_on,
//     subtitle: 'الرياض',
//   ),
//   Property(
//     title: 'مبنى النور السكني',
//     description:
//         'ابحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب ',
//     imageUrl: 'https://picsum.photos/400/300?random=4',
//     rating: 5,
//     icon: Icons.location_on,
//     subtitle: 'الرياض',
//   ),
//   Property(
//     title: 'مبنى النور السكني',
//     description:
//         'ابحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب ',
//     imageUrl: 'https://picsum.photos/400/300?random=4',
//     rating: 5,
//     icon: Icons.location_on,
//     subtitle: 'الرياض',
//   ),
//   Property(
//     title: 'مبنى النور السكني',
//     description:
//         'ابحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب ',
//     imageUrl: 'https://picsum.photos/400/300?random=4',
//     rating: 5,
//     icon: Icons.location_on,
//     subtitle: 'الرياض',
//   ),
//   Property(
//     title: 'مبنى النور السكني',
//     description:
//         'ابحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب ',
//     imageUrl: 'https://picsum.photos/400/300?random=4',
//     rating: 5,
//     icon: Icons.location_on,
//     subtitle: 'الرياض',
//   ),
//   Property(
//     title: 'مبنى النور السكني',
//     description:
//         'ابحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب ',
//     imageUrl: 'https://picsum.photos/400/300?random=4',
//     rating: 5,
//     icon: Icons.location_on,
//     subtitle: 'الرياض',
//   ),
//   Property(
//     title: 'مبنى النور السكني',
//     description:
//         'ابحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب ',
//     imageUrl: 'https://picsum.photos/400/300?random=4',
//     rating: 5,
//     icon: Icons.location_on,
//     subtitle: 'الرياض',
//   ),
//   Property(
//     title: 'مبنى النور السكني',
//     description:
//         'ابحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب بحث عن شقتك هنا في قلب ',
//     imageUrl: 'https://picsum.photos/400/300?random=5',
//     rating: 4,
//     icon: Icons.location_on,
//     subtitle: 'الرياض',
//   ),
// ];
