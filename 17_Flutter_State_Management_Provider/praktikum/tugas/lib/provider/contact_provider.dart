import 'package:flutter/material.dart';

class ObscuredTextFieldSample extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final ValueChanged<String>? onChanged;
  final double? width;
  final FormFieldValidator<String>? validator;

  const ObscuredTextFieldSample({
    Key? key,
    this.controller,
    this.labelText,
    this.onChanged,
    this.width,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 410,
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        obscureText: false,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: labelText,
          filled: true,
          fillColor: Color.fromARGB(255, 224, 178, 233).withOpacity(0.2),
          labelStyle: TextStyle(
            color: Color.fromARGB(255, 33, 30, 30),
          ),
        ),
        validator: validator,
      ),
    );
  }
}

class ContactProvider with ChangeNotifier {
  List<Map<String, String>> _dataKontak = [];

  List<Map<String, String>> get dataKontak => _dataKontak;

  void addContact(Map<String, String> newContact) {
    _dataKontak.add(newContact);
    notifyListeners();
  }

  void removeContact(int index) {
    _dataKontak.removeAt(index);
    notifyListeners();
  }

  void updateContact(int index, Map<String, String> updatedContact) {
    _dataKontak[index] = updatedContact;
    notifyListeners();
  }
}
