import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(CupertinoAppExample());

class CupertinoAppExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoContactPage(),
    );
  }
}

class CupertinoContactPage extends StatefulWidget {
  @override
  _CupertinoHomePageState createState() => _CupertinoHomePageState();
}

class _CupertinoHomePageState extends State<CupertinoContactPage> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  bool submitted = false;

  void _showSidebar() {
    Scaffold.of(context).openDrawer();
  }

  void submitForm(BuildContext context) {
    setState(() {
      submitted = true;
    });

    String firstName = firstNameController.text;
    String lastName = lastNameController.text;
    String email = emailController.text;
    String message = messageController.text;

    // Handle submission here, e.g., send the data to a server.

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title:
              Text('Data yang Dikirim', style: TextStyle(color: Colors.black)),
          content: Column(
            children: [
              Text('Nama Depan: $firstName',
                  style: TextStyle(color: Colors.black)),
              Text('Nama Belakang: $lastName',
                  style: TextStyle(color: Colors.black)),
              Text('Email: $email', style: TextStyle(color: Colors.black)),
              Text('Pesan: $message', style: TextStyle(color: Colors.black)),
            ],
          ),
          actions: [
            CupertinoDialogAction(
              child: Text('Tutup', style: TextStyle(color: Colors.black)),
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
        activeColor: const Color.fromARGB(255, 0, 140, 255),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.home,
              color: const Color.fromARGB(255, 0, 140, 255),
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
        var cupertinoPageScaffold = CupertinoPageScaffold(
          backgroundColor: Color.fromARGB(255, 251, 251, 253),
          navigationBar: CupertinoNavigationBar(
            middle: Text('One Library', style: TextStyle(color: Colors.black)),
            backgroundColor: const Color.fromARGB(255, 0, 140, 255),
            leading: GestureDetector(
              onTap: () {
                _showSidebar();
              },
              child: Icon(
                CupertinoIcons.bars,
                color: Color.fromARGB(255, 220, 223, 226),
              ),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                    child: Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'Hai, Welcome to OLib',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                )),
                Center(
                  child: Image.network(
                      'data:image/jpeg;base64,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',
                      width: 200, // Ganti lebar sesuai kebutuhan Anda
                      height: 200),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Text('Contact us',
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      'Need to get in touch with us? Either fill out the form with your inquiry or find the department email you would like to connect below',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 129, 126, 126),
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                // Bagian Contact Us
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      // Baris Pertama: Nama Depan dan Nama Belakang
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nama Depan*',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                CupertinoTextField(
                                  controller: firstNameController,
                                  placeholder: 'Nama Depan',
                                  keyboardType: TextInputType.text,
                                  padding: EdgeInsets.all(12.0),
                                  decoration: BoxDecoration(
                                    color: CupertinoColors.white,
                                    border: Border.all(
                                      color: submitted
                                          ? Colors.grey
                                          : CupertinoColors.systemGrey4,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  style: TextStyle(
                                      color: Colors
                                          .grey), // Warna teks menjadi abu-abu
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nama Belakang*',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                CupertinoTextField(
                                  controller: lastNameController,
                                  placeholder: 'Nama Belakang',
                                  keyboardType: TextInputType.text,
                                  padding: EdgeInsets.all(12.0),
                                  decoration: BoxDecoration(
                                    color: CupertinoColors.white,
                                    border: Border.all(
                                      color: submitted
                                          ? Colors.grey
                                          : CupertinoColors.systemGrey4,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  style: TextStyle(
                                      color: Colors
                                          .grey), // Warna teks menjadi abu-abu
                                ),
                              ],
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
                              color: Colors.black,
                            ),
                          ),
                          CupertinoTextField(
                            controller: emailController,
                            placeholder: 'Email',
                            keyboardType: TextInputType.emailAddress,
                            padding: EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                              color: CupertinoColors.white,
                              border: Border.all(
                                color: submitted
                                    ? Colors.grey
                                    : CupertinoColors.systemGrey4,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            style: TextStyle(
                                color:
                                    Colors.grey), // Warna teks menjadi abu-abu
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
                              color: Colors.black,
                            ),
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
                                color: submitted
                                    ? Colors.grey
                                    : CupertinoColors.systemGrey4,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            style: TextStyle(
                                color:
                                    Colors.grey), // Warna teks menjadi abu-abu
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
        drawer:
        Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Welcome'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                  // You can add the navigation logic here
                },
              ),
              ListTile(
                title: Text('Contact Us'),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                  // Add your navigation logic here
                },
              ),
              ListTile(
                title: Text('About Us'),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                  // Add your navigation logic here
                },
              ),
              ListTile(
                title: Text('Login'),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                  // Add your navigation logic here
                },
              ),
            ],
          ),
        );
        return cupertinoPageScaffold;
      },
    );
  }
}
