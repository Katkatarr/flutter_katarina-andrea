import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';
import 'package:file_picker/file_picker.dart';

void main() {
  runApp(MaterialApp(
    home: DatePickerAndColorPicker(),
  ));
}

class DatePickerAndColorPicker extends StatefulWidget {
  @override
  _DatePickerAndColorPickerState createState() =>
      _DatePickerAndColorPickerState();
}

class _DatePickerAndColorPickerState extends State<DatePickerAndColorPicker> {
  DateTime _dueDate = DateTime.now();
  Color _currentColor = Colors.orange;
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List<Map<String, String>> data_kontak = [];
  int selectedContactIndex = -1;
  String? _selectedFileName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Interactive Widget'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildContactForm(),
            SizedBox(height: 20),
            datePicker(context),
            SizedBox(height: 20),
            buildColorPicker(context),
            SizedBox(height: 20),
            buildFilePicker(),
            SizedBox(height: 20),
            buildContactList(),
          ],
        ),
      ),
    );
  }

  Widget buildContactForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          ObscuredTextFieldSample(
            controller: nameController,
            labelText: 'Name',
            onChanged: (name) {
              print('Nama: $name');
            },
            width: 250,
          ),
          SizedBox(height: 10),
          ObscuredTextFieldSample(
            controller: phoneNumberController,
            labelText: 'Phone Number',
            onChanged: (phoneNumber) {
              print('Phone Number: $phoneNumber');
            },
            width: 250,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Nomor telepon harus diisi';
              }
              if (!RegExp(r"^[0-9]{8,15}$").hasMatch(value)) {
                return 'Nomor telepon tidak valid';
              }
              if (!value.startsWith('0')) {
                return 'Nomor telepon harus dimulai dengan angka 0';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }

  Column datePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Date'),
            TextButton(
              onPressed: () async {
                final selectDate = await showDatePicker(
                  context: context,
                  initialDate: _dueDate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(DateTime.now().year + 5),
                );
                setState(() {
                  if (selectDate != null) {
                    _dueDate = selectDate;
                  }
                });
                print('Selected date: $_dueDate');
              },
              child: Text('Select'),
            ),
          ],
        ),
        Text(DateFormat('dd-MM-yyyy').format(_dueDate)),
      ],
    );
  }

  Widget buildColorPicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Color'),
        const SizedBox(height: 10),
        Container(height: 100, width: double.infinity, color: _currentColor),
        const SizedBox(height: 10),
        Center(
          child: ElevatedButton(
            child: const Text('Pick Color'),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Pick Your Color'),
                    content: BlockPicker(
                      pickerColor: _currentColor,
                      onColorChanged: (color) {
                        setState(() {
                          _currentColor = color;
                        });
                      },
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Save'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }

  Widget buildFilePicker() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Pick Files'),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: ElevatedButton(
            child: const Text('Pick and Open File'),
            onPressed: () {
              _pickAndOpenFile();
            },
          ),
        ),
        SizedBox(height: 20),
        Center(
          child: ElevatedButton(
            child: const Text('Submit'),
            onPressed: _submitForm,
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xFF6750A4)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _pickAndOpenFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;

    final file = result.files.first;
    setState(() {
      _selectedFileName = file.name;
    });
    OpenFile.open(file.path);
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        String name = nameController.text;
        String phoneNumber = phoneNumberController.text;
        String formattedDate = DateFormat('dd-MM-yyyy').format(_dueDate);
        String color = _currentColor.toString();
        String fileName = _selectedFileName ?? "No File Selected";

        Map<String, String> newContact = {
          "title": name,
          "subtitle": phoneNumber,
          "date": formattedDate,
          "color": color,
          "fileName": fileName,
        };

        data_kontak.add(newContact);

        nameController.clear();
        phoneNumberController.clear();
        _selectedFileName = null;
      });

      print('data_kontak : $data_kontak');
    }
  }

  Widget buildContactList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'List Contact',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: data_kontak.length,
            itemBuilder: (BuildContext context, int index) {
              String title =
                  data_kontak[index]["title"] ?? "Nama Tidak Tersedia";
              String subtitle =
                  data_kontak[index]["subtitle"] ?? "Nomor Tidak Tersedia";
              String initial = title.isNotEmpty ? title[0] : "?";
              String date =
                  data_kontak[index]["date"] ?? "Tanggal Tidak Tersedia";
              String color =
                  data_kontak[index]["color"] ?? "Color Tidak Tersedia";
              String fileName =
                  data_kontak[index]["fileName"] ?? "File Tidak Tersedia";

              return ListTile(
                leading: CircleAvatar(
                  child: Text(
                    initial,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: const Color.fromARGB(255, 35, 35, 35),
                    ),
                  ),
                  backgroundColor:
                      Color.fromARGB(255, 224, 178, 233).withOpacity(0.2),
                ),
                title: Text(title),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(subtitle),
                    Text("Date: $date"),
                    Text("Color: $color"),
                    Text("File: $fileName"),
                  ],
                ),
                trailing: Wrap(
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        setState(() {
                          selectedContactIndex = index;
                          nameController.text = title;
                          phoneNumberController.text = subtitle;
                        });
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        setState(() {
                          data_kontak.removeAt(index);
                        });
                      },
                    ),
                  ],
                ),
                onTap: () {
                  // Handle tap on contact if needed
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

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
      width: 410,
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
