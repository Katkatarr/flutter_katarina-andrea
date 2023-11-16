import 'package:flutter/material.dart';

void main() {
  runApp(const HelloWord());
}

class HelloWord extends StatefulWidget {
  const HelloWord({Key? key});

  @override
  State<HelloWord> createState() => _HelloWordState();
}

class _HelloWordState extends State<HelloWord> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  final GlobalKey<FormState> _formKey =
      GlobalKey<FormState>(); // GlobalKey untuk mengelola form

  List<Map<String, String>> data_kontak = [
    {"title": "Name 1", "subtitle": "+628123456781"},
    {"title": "Name 2", "subtitle": "+628123456782"},
    {"title": "Name 3", "subtitle": "+628123456783"},
    {"title": "Name 4", "subtitle": "+628123456784"},
    {"title": "Name 5", "subtitle": "+628123456785"}
  ]; // data akan kita dapatkan dari API temen2 back end

  int selectedContactIndex = -1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Katarina App'),
          backgroundColor: Color.fromARGB(255, 108, 5, 159),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
            child: Center(
              child: Form(
                key: _formKey, // Menghubungkan GlobalKey dengan form
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Icon(Icons.phone_rounded),
                    Text(
                      'Create New Contacts',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '\nA dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    Divider(),
                    ObscuredTextFieldSample(
                      controller: nameController,
                      labelText: 'Name',
                      onChanged: (name) {
                        print('Nama: $name');
                      },
                      width: 250, // Atur lebar TextField
                      validator: (value) {
                        // Validasi Nama
                        if (value == null || value.isEmpty) {
                          return 'Nama harus diisi';
                        }
                        if (value.split(' ').length < 2) {
                          return 'Nama harus terdiri dari minimal 2 kata';
                        }
                        if (!RegExp(r"^[A-Z][a-zA-Z]*$").hasMatch(value)) {
                          return 'Nama tidak valid';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10, // Jarak antara TextField
                    ),
                    ObscuredTextFieldSample(
                      controller: phoneNumberController,
                      labelText: 'Phone Number',
                      onChanged: (phoneNumber) {
                        print('Phone Number: $phoneNumber');
                      },
                      width: 250, // Atur lebar TextField
                      validator: (value) {
                        // Validasi Nomor Telepon
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
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                        child: Text('Submit'),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Validasi sukses
                            setState(() {
                              if (selectedContactIndex == -1) {
                                // Tambahkan data baru
                                String name = nameController.text;
                                String phoneNumber = phoneNumberController.text;

                                data_kontak.add(
                                    {"title": name, "subtitle": phoneNumber});
                              } else {
                                // Edit data yang ada
                                data_kontak[selectedContactIndex]["title"] =
                                    nameController.text;
                                data_kontak[selectedContactIndex]["subtitle"] =
                                    phoneNumberController.text;
                                selectedContactIndex = -1;
                              }

                              nameController.clear();
                              phoneNumberController.clear();
                            });

                            print('data_kontak : $data_kontak');
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF6750A4)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
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
                          String title = data_kontak[index]["title"] ??
                              "Nama Tidak Tersedia";
                          String subtitle = data_kontak[index]["subtitle"] ??
                              "Nomor Tidak Tersedia";
                          String initial = title.isNotEmpty
                              ? title[0]
                              : "?"; // Mendapatkan huruf pertama

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
                                  Color.fromARGB(255, 224, 178, 233)
                                      .withOpacity(0.2),
                            ),
                            title: Text(title),
                            subtitle: Text(subtitle),
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
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ObscuredTextFieldSample extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final ValueChanged<String>? onChanged;
  final double? width; // Tambahkan properti lebar
  final FormFieldValidator<String>? validator; // Validator untuk validasi

  const ObscuredTextFieldSample({
    Key? key,
    this.controller,
    this.labelText,
    this.onChanged,
    this.width, // Inisialisasi properti lebar
    this.validator, // Inisialisasi validator
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 410, // Gunakan properti lebar di sini
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        obscureText: false,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: labelText,
          filled: true, // Mengisi latar belakang
          fillColor: Color.fromARGB(255, 224, 178, 233)
              .withOpacity(0.2), // Warna latar belakang ungu muda
          labelStyle: TextStyle(
            color: Color.fromARGB(255, 33, 30, 30), // Warna teks hitam
          ),
        ),
        validator: validator, // Set validator di sini
      ),
    );
  }
}
