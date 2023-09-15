import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var inputControllers = TextEditingController();
    var radioValue = ' ';
    List data_kontak = [
      {
        'title': 'John Doe',
        'instagramUsername': '@johndoe',
      },
      {
        'title': 'Jane Smith',
        'instagramUsername': '@janesmith',
      },
      {
        'title': 'Alice Johnson',
        'instagramUsername': '@alicejohnson',
      },
    ];
    return MaterialApp(
      // title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Katarina App'),
        ),
        body: Container(
          color: Colors.lightBlue,
          margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Katarina'),
                    Text('Katarina'),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Text('List username'),
                TextField(
                    controller: inputControllers,
                    onChanged: (inputControllers) {
                      if (inputControllers == 'muchson') {
                        print('mentor');
                      } else {
                        print('mentee');
                      }
                      //print('$inputControllers');
                    }),
                Row(
                  children: [
                    Radio(
                        value: 'Laki - Laki',
                        groupValue: radioValue,
                        onChanged: (String? value) {
                          setState(() {
                            radioValue = value ?? '';
                            print('Radio button onChange = $radioValue');
                          });
                        }),
                    Text('Laki - laki'),
                  ],
                ),
                SizedBox(
                    height: 200,
                    child: ListView.builder(
                        itemCount: data_kontak.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            leading: FlutterLogo(),
                            title: Text('${data_kontak[index]["title"]}'),
                            subtitle: Text(
                                '@${data_kontak[index]['instagramUsername']}'),
                          );
                        })),

                // itemCount: 25,
                // itemBuilder: (BuildContext context, int index) {
                //   return ListTile(
                //     title: Text('Anak Didik ke-$index'),
                //);
                // },
              ],
            ),
          ),
        ),
      ),
    );
  }
}
