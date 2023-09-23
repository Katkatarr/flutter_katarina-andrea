import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

List<Map<String, String>> data_kontak = [
  {
    "title": "Kepala SUku",
    "jenis_kelamin": "Laki-laki",
  },
  {
    "title": "Guru Bahasa Cinta",
    "jenis_kelamin": "perempuan",
  },
  {
    "title": "Bendahara Sekolah",
    "jenis_kelamin": "Laki-laki",
  },
  {"title": "Guru Matematika", "jenis_kelamin": "Perempuan"},
  {"title": "Guru Biologi", "jenis_kelamin": "Laki-laki"}
];

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HelloWord();
  }
}

class HelloWord extends StatefulWidget {
  HelloWord({Key? key}) : super(key: key);

  @override
  State<HelloWord> createState() => _HelloWordState();
}

class _HelloWordState extends State<HelloWord> {
  var dropDownValue = 0;
  var checkValue = false;
  var inputControllers = TextEditingController();
  var radioValue = '';
  List<String> checkboxValue = [];
  var isCheckbox1 = false;
  String textFieldData = '';
  DateTime _dueDate = DateTime.now();
  final currentDate = DateTime.now();
  Color _currentColor = Colors.orange; // Color picker

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [],
                ),
                SizedBox(
                  height: 60,
                ),
                Text('List Kelas D'),
                TextField(
                  controller: inputControllers,
                  onChanged: (value) {
                    setState(() {
                      textFieldData = value;
                    });
                    print('$value');
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
                          print('Nilai dari radio value = $radioValue');
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
                          print('Nilai dari radio value = $radioValue');
                        });
                      },
                    ),
                    Text('Perempuan'),
                  ],
                ),
                // Date Picker
                datePicker(context),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: Text('Submit'),
                  onPressed: () {
                    setState(() {
                      data_kontak.add({
                        "title": "$textFieldData",
                        "jenis_kelamin": "$radioValue",
                      });
                    });
                    print('data_kontak : $data_kontak');
                  },
                ),
                // Color Picker (added below the Submit button)
                buildColorPicker(context),
                Divider(),
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
                        trailing: Wrap(children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                data_kontak.removeAt(index);
                              });
                            },
                            icon: Icon(Icons.delete),
                          ),
                          IconButton(
                            onPressed: () => AlertEdit(context, index),
                            icon: Icon(Icons.edit),
                          )
                        ]),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
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
                print('select date');
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
            // style: ButtonStyle(
            //   backgroundColor: MaterialStateProperty.all(_currentColor),
            // ),
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

  Future<String?> AlertEdit(BuildContext context, int index) {
    final contact = data_kontak[index]['title'];
    final radioJenisKelamin = data_kontak[index]['jenis_kelamin'];
    TextEditingController nameControllerEdit =
        TextEditingController(text: contact);

    return showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Edit Contact'),
        content: Column(
          children: [
            Text('Nama'),
            TextField(
              controller: nameControllerEdit,
            ),
            Row(
              children: [
                Radio(
                  value: 'Laki-laki',
                  groupValue: radioValue,
                  onChanged: (String? value) {
                    setState(() {
                      radioValue = value ?? '';
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
                    });
                  },
                ),
                Text('Perempuan'),
              ],
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                data_kontak[index]["title"] = nameControllerEdit.text;
                data_kontak[index]["jenis_kelamin"] = radioValue;
              });
              Navigator.pop(context);
              print('Submit Edit');
            },
            child: Text('Submit Edit'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context, 'Cancel');
            },
            child: Text('Cancel'),
          ),
        ],
      ),
    );
  }
}
