import 'dart:ui';

class Contact {
  final String name;
  final String phoneNumber;
  final DateTime dueDate;
  final Color color;
  final String fileName;

  Contact({
    required this.name,
    required this.phoneNumber,
    required this.dueDate,
    required this.color,
    required this.fileName,
  });
}
