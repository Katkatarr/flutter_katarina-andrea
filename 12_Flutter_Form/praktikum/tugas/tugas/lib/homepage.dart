import 'package:flutter/material.dart';
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Data(),
    );
  }
}

class Contact {
  String name;
  String phoneNumber;

  Contact(this.name, this.phoneNumber);
}

class Data extends StatefulWidget {
  @override
  _DataState createState() => _DataState();
}

class _DataState extends State<Data> {
  final List<Contact> contacts = [];
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

  void addContact() {
    String name = nameController.text;
    String phoneNumber = phoneNumberController.text;

    contacts.add(Contact(name, phoneNumber));
    nameController.clear();
    phoneNumberController.clear();

    print("Data Kontak: ");
    for (var contact in contacts) {
      final contactData = {
        "Nama": contact.name,
        "Nomor Telepon": contact.phoneNumber,
      };
      final jsonData = jsonEncode(contactData);
      print(jsonData);
    }
  }

  void editContact(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String editedName = contacts[index].name;
        String editedPhoneNumber = contacts[index].phoneNumber;

        return AlertDialog(
          title: Text('Edit Contact'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: TextEditingController(text: editedName),
                onChanged: (text) {
                  setState(() {
                    editedName = text;
                  });
                },
                decoration: InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: TextEditingController(text: editedPhoneNumber),
                onChanged: (text) {
                  setState(() {
                    editedPhoneNumber = text;
                  });
                },
                decoration: InputDecoration(labelText: 'Phone Number'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Update the contact information here
                setState(() {
                  contacts[index].name = editedName;
                  contacts[index].phoneNumber = editedPhoneNumber;
                });
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(contacts[index].name),
            subtitle: Text(contacts[index].phoneNumber),
            onTap: () {
              editContact(index);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addContact();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
