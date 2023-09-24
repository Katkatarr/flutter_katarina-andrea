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
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            margin: EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    'Create New Contacts \n\nA dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made',
                    textAlign: TextAlign.center,
                  ),
                  TextField(
                    controller: nameController,
                    onChanged: (name) {
                      print('Nama: $name');
                    },
                    decoration: InputDecoration(
                      labelText: 'Nama',
                    ),
                  ),
                  TextField(
                    controller: phoneNumberController,
                    onChanged: (phoneNumber) {
                      print('Phone Number: $phoneNumber');
                    },
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      child: Text('Submit'),
                      onPressed: () {
                        setState(() {
                          if (selectedContactIndex == -1) {
                            // Tambahkan data baru
                            String name = nameController.text;
                            String phoneNumber = phoneNumberController.text;

                            data_kontak
                                .add({"title": name, "subtitle": phoneNumber});
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
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF6750A4)),
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
                                color: Colors.white,
                              ),
                            ),
                            backgroundColor: Colors.blue,
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
    );
  }
}
