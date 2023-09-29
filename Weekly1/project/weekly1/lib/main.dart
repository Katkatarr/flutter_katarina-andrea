// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(CupertinoAppExample());

class CupertinoAppExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoHomePage(),
    );
  }
}

class CupertinoHomePage extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  void submitForm(BuildContext context) {
    String username = usernameController.text;
    String email = emailController.text;
    String message = messageController.text;

    // Handle submission here, e.g., send the data to a server.

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('Data yang Dikirim'),
          content: Column(
            children: [
              Text('Username: $username'),
              Text('Email: $email'),
              Text('Pesan: $message'),
            ],
          ),
          actions: [
            CupertinoDialogAction(
              child: Text('Tutup'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: CupertinoColors.white,
        activeColor: CupertinoColors.systemOrange,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.home,
              color: CupertinoColors.systemOrange,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.search,
              color: Color.fromRGBO(46, 46, 54, 1),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.collections,
              color: Color.fromRGBO(46, 46, 54, 1),
            ),
            label: 'Collection',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.profile_circled,
              color: Color.fromRGBO(46, 46, 54, 1),
            ),
            label: 'Profile',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoPageScaffold(
          backgroundColor: Color.fromARGB(255, 251, 251, 253),
          navigationBar: CupertinoNavigationBar(
            middle: Text('One Library'),
            backgroundColor: Color.fromARGB(255, 240, 120, 0),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Bagian Contact Us
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      // Label dan CupertinoTextField untuk Username
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Contact Us',
                            style: TextStyle(
                                fontSize:
                                    24, // Atur ukuran teks label sesuai kebutuhan Anda
                                fontWeight: FontWeight.bold,
                                color: Colors
                                    .black // Atur tebal teks label sesuai kebutuhan Anda
                                ),
                          ),
                          Text(
                            'Need to get in touch with us? Either fill out the form \nwith your inquiry or find the department email you \nlike to contact below',
                            style: TextStyle(
                                fontSize:
                                    12, // Atur ukuran teks label sesuai kebutuhan Anda
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 3, 3, 3)
                                // Atur tebal teks label sesuai kebutuhan Anda
                                ),
                          ),
                          Text(
                            'First name*',
                            style: TextStyle(
                                fontSize:
                                    16, // Atur ukuran teks label sesuai kebutuhan Anda
                                fontWeight: FontWeight.bold,
                                color: Colors
                                    .black // Atur tebal teks label sesuai kebutuhan Anda
                                ),
                          ),
                          CupertinoTextField(
                            controller: usernameController,
                            placeholder: 'Username',
                            keyboardType: TextInputType.text,
                            padding: EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                              color: CupertinoColors.white,
                              border: Border.all(
                                color: CupertinoColors.systemGrey4,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0),

                      // Label dan CupertinoTextField untuk Email
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email*',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          CupertinoTextField(
                            controller: emailController,
                            placeholder: 'Email',
                            keyboardType: TextInputType.emailAddress,
                            padding: EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                              color: CupertinoColors.white,
                              border: Border.all(
                                color: CupertinoColors.systemGrey4,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0),

                      // Label dan CupertinoTextField untuk Pesan
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'What can we help you with?',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          CupertinoTextField(
                            controller: messageController,
                            placeholder: 'Pesan',
                            keyboardType: TextInputType.multiline,
                            maxLines: 4,
                            padding: EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                              color: CupertinoColors.white,
                              border: Border.all(
                                color: CupertinoColors.systemGrey4,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0),

                      Align(
                        alignment: Alignment.centerLeft,
                        child: CupertinoButton(
                          onPressed: () {
                            submitForm(context);
                          },
                          color: const Color.fromARGB(255, 70, 4, 103),
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              color: CupertinoColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
