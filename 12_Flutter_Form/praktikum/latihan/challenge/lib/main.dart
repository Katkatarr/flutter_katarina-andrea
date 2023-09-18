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
  String dropDownValue =
      'pilihan 1'; // Mengganti tipe data menjadi String dan set default value
  bool checkValue = false;

  TextEditingController inputController = TextEditingController();
  String radioValue = '';
  List<Map<String, String>> data_kontak = [
    {"title": "Kepala Suku", "jenis_kelamin": "Laki-laki"},
    {"title": "Guru Bahasa Cinta", "jenis_kelamin": "perempuan"},
    {"title": "Bundahara", "jenis_kelamin": "perempuan"},
    {"title": "Guru Bahasa Purba", "jenis_kelamin": "Perempuan"},
    {"title": "Tukang Kebun", "jenis_kelamin": "Laki-laki"}
  ]; // data akan kita dapatkan dari API temen2 back end

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.green;
    }
    return Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Katarina App'),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.grey,
            margin: EdgeInsets.only(top: 30, left: 20, right: 20),
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
                  Text('Latihan Buat Form'),
                  TextField(
                    controller: inputController,
                    onChanged: (inputControllers) {
                      print('$inputControllers');
                    },
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 'Laki-laki',
                        groupValue: radioValue,
                        onChanged: (String? value) {
                          setState(() {
                            radioValue = value ?? '';
                            print('Nilai dari radio value =  $radioValue');
                          });
                        },
                      ),
                      Text('Laki - laki'),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 'Perempuan',
                        groupValue: radioValue,
                        onChanged: (String? value) {
                          setState(() {
                            radioValue = value ?? '';
                            print('Nilai dari radio value =  $radioValue');
                          });
                        },
                      ),
                      Text('Perempuan'),
                    ],
                  ),
                  // Checkbox section
                  Divider(),
                  Row(
                    children: [
                      Checkbox(
                        value: checkValue,
                        checkColor: Colors.green,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        onChanged: (bool? value) {
                          setState(() {
                            checkValue = value ?? false;
                            print('$checkValue');
                          });
                        },
                      ),
                      Text('Bahasa Alien'),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: checkValue,
                        checkColor: Colors.green,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        onChanged: (bool? value) {
                          setState(() {
                            checkValue = value ?? false;
                            print('$checkValue');
                          });
                        },
                      ),
                      Text('Bahasa Sansekerta'),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: checkValue,
                        checkColor: Colors.green,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        onChanged: (bool? value) {
                          setState(() {
                            checkValue = value ?? false;
                            print('$checkValue');
                          });
                        },
                      ),
                      Text('PHP'),
                    ],
                  ),
                  // Dropdown section
                  Divider(),
                  DropdownButton(
                    value: dropDownValue,
                    items: [
                      DropdownMenuItem(
                        value: 'pilihan 1',
                        child: Text('pilihan 1'),
                      ),
                      DropdownMenuItem(
                        value: 'pilihan 2',
                        child: Text('pilihan 2'),
                      ),
                      DropdownMenuItem(
                        value: 'pilihan 3',
                        child: Text('pilihan 3'),
                      )
                    ],
                    onChanged: (String? value) {
                      setState(() {
                        dropDownValue = value ?? 'pilihan 1';
                        print('$dropDownValue');
                      });
                    },
                  ),
                  // Display selected options
                  SizedBox(height: 20),
                  Text('Radio Button Selected: $radioValue'),
                  Text(
                      'Checkbox Selected: ${checkValue ? "Bahasa Alien, Bahasa Sansekerta, PHP" : "None"}'),
                  Text('Dropdown Selected: $dropDownValue'),
                  ElevatedButton(
                    child: Text('Submit'),
                    onPressed: () {
                      setState(() {
                        String selectedGender = radioValue;
                        List<String> selectedLanguages = [];

                        if (checkValue) {
                          selectedLanguages.addAll(
                              ['Bahasa Alien', 'Bahasa Sansekerta', 'PHP']);
                        }

                        data_kontak.add({
                          "title": inputController.text,
                          "jenis_kelamin": selectedGender,
                          "languages": selectedLanguages.join(", "),
                          "dropdown_value": dropDownValue,
                        });

                        inputController.clear();
                        radioValue = '';
                        checkValue = false;
                      });

                      print('data_kontak : $data_kontak');
                    },
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      itemCount: data_kontak.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: FlutterLogo(),
                          title: Text('${data_kontak[index]["title"]}'),
                          subtitle:
                              Text('${data_kontak[index]["jenis_kelamin"]}'),
                          trailing: Text(
                              'Keahlian: ${data_kontak[index]["languages"]}'),
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






// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     var inputControllers = TextEditingController();
//     var radioValue = ' ';
//     var checkValue = false;
//     List data_kontak = [
//       {
//         'title': 'John Doe',
//         'instagramUsername': '@johndoe',
//       },
//       {
//         'title': 'Jane Smith',
//         'instagramUsername': '@janesmith',
//       },
//       {
//         'title': 'Alice Johnson',
//         'instagramUsername': '@alicejohnson',
//       },
//     ];
//     return MaterialApp(
//       // title: 'Material App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Katarina App'),
//         ),
//         body: Container(
//           color: Colors.lightBlue,
//           margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
//           child: Center(
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text('Katarina'),
//                     Text('Katarina'),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 60,
//                 ),
//                 Text('List username'),
//                 TextField(
//                     controller: inputControllers,
//                     onChanged: (inputControllers) {
//                       if (inputControllers == 'muchson') {
//                         print('mentor');
//                       } else {
//                         print('mentee');
//                       }
//                       //print('$inputControllers');
//                     }),
//                 Row(
//                   children: [
//                     Radio(
//                         value: 'Laki - Laki',
//                         groupValue: radioValue,
//                         onChanged: (String? value) {
//                           setState(() {
//                             radioValue = value ?? '';
//                             print('Radio button onChange = $radioValue');
//                           });
//                         }),
//                     Text('Laki - laki'),
//                   ],
//                 ),
//                 // Row (
//                 // Checkbox(
//                 //     value: checkValue,
//                 //     checkColor: Colors.green,
//                 //     fillColor: MaterialStateProperty,
//                 //     onChanged: (bool? value) {
//                 //       setState(() {
//                 //       checkValue = value ?? false;
//                 //       print('$value');
//                 //       });
//                 //     }),
//                 SizedBox(
//                     height: 200,
//                     child: ListView.builder(
//                         itemCount: data_kontak.length,
//                         itemBuilder: (BuildContext context, int index) {
//                           return ListTile(
//                             leading: FlutterLogo(),
//                             title: Text('${data_kontak[index]["title"]}'),
//                             subtitle: Text(
//                                 '@${data_kontak[index]['instagramUsername']}'),
//                           );
//                         })),

//                 // itemCount: 25,
//                 // itemBuilder: (BuildContext context, int index) {
//                 //   return ListTile(
//                 //     title: Text('Anak Didik ke-$index'),
//                 //);
//                 // },
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
