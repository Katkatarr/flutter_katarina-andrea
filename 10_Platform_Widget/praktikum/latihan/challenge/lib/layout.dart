import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Katarina App'),
        ),
        body: Container(
          color: Colors.grey,
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
                Text('List Anak Didik'),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: GridView.count(crossAxisCount: 2, children: [
                    //child: ListView(padding: const EdgeInsets.all(8), children: [
                    Text('ADE ALI INDRA'),
                    Text('ALWIN ZUHRIANDI MANALU'),
                    Text('ANISA YUNIARTI'),
                    Text('Bima Pangestu Nugraha'),
                    Text('Dastin Pranata Yuda'),
                    Text('David Christian Hui'),
                    Text('David Liem'),
                    Text('Delia Sepiana'),
                    Text('FAJRUL KAMAL'),
                    Text('GHAZI FARHANU DISASMORO'),
                    Text('HIDAYAH DANIAWATI'),
                    Text('JUHARMANSAH'),
                    Text('KATARINA ANDREA LAURENTIA'),
                    Text('MUHAMMAD AFRIZAL RASYID'),
                    Text('MUHAMMAD ARARYA HAFIZH ATHALLA'),
                    Text('MUHAMMAD ILHAM'),
                    Text('MUHAMMAD NGURAH ARYA PRATAMA'),
                    Text('MUSTIKA CHAIRANI'),
                    Text('NURMALASARI'),
                    Text('Phrimus Nufeto'),
                    Text('PUTRI DIANA HAFSYAWATI'),
                    Text('RACHAEL NATHASYA'),
                    Text('RAFI TAUFIQURAHMAN'),
                    Text('RAMADHAN PUTRA NUGRAHA'),
                    Text('YUNITA ANGGERAINI'),
                    Text('ADE ALI INDRA'),
                    Text('ALWIN ZUHRIANDI MANALU'),
                    Text('ANISA YUNIARTI'),
                    Text('Bima Pangestu Nugraha'),
                    Text('Dastin Pranata Yuda'),
                    Text('David Christian Hui'),
                    Text('David Liem'),
                    Text('Delia Sepiana'),
                    Text('FAJRUL KAMAL'),
                    Text('GHAZI FARHANU DISASMORO'),
                    Text('HIDAYAH DANIAWATI'),
                    Text('JUHARMANSAH'),
                    Text('KATARINA ANDREA LAURENTIA'),
                    Text('MUHAMMAD AFRIZAL RASYID'),
                    Text('MUHAMMAD ARARYA HAFIZH ATHALLA'),
                    Text('MUHAMMAD ILHAM'),
                    Text('MUHAMMAD NGURAH ARYA PRATAMA'),
                    Text('MUSTIKA CHAIRANI'),
                    Text('NURMALASARI'),
                    Text('Phrimus Nufeto'),
                    Text('PUTRI DIANA HAFSYAWATI'),
                    Text('RACHAEL NATHASYA'),
                    Text('RAFI TAUFIQURAHMAN'),
                    Text('RAMADHAN PUTRA NUGRAHA'),
                    Text('YUNITA ANGGERAINI'),
                    Text('ADE ALI INDRA'),
                    Text('ALWIN ZUHRIANDI MANALU'),
                    Text('ANISA YUNIARTI'),
                    Text('Bima Pangestu Nugraha'),
                    Text('Dastin Pranata Yuda'),
                    Text('David Christian Hui'),
                    Text('David Liem'),
                    Text('Delia Sepiana'),
                    Text('FAJRUL KAMAL'),
                    Text('GHAZI FARHANU DISASMORO'),
                    Text('HIDAYAH DANIAWATI'),
                    Text('JUHARMANSAH'),
                    Text('KATARINA ANDREA LAURENTIA'),
                    Text('MUHAMMAD AFRIZAL RASYID'),
                    Text('MUHAMMAD ARARYA HAFIZH ATHALLA'),
                    Text('MUHAMMAD ILHAM'),
                    Text('MUHAMMAD NGURAH ARYA PRATAMA'),
                    Text('MUSTIKA CHAIRANI'),
                    Text('NURMALASARI'),
                    Text('Phrimus Nufeto'),
                    Text('PUTRI DIANA HAFSYAWATI'),
                    Text('RACHAEL NATHASYA'),
                    Text('RAFI TAUFIQURAHMAN'),
                    Text('RAMADHAN PUTRA NUGRAHA'),
                    Text('YUNITA ANGGERAINI'),
                    Text('ADE ALI INDRA'),
                    Text('ALWIN ZUHRIANDI MANALU'),
                    Text('ANISA YUNIARTI'),
                    Text('Bima Pangestu Nugraha'),
                    Text('Dastin Pranata Yuda'),
                    Text('David Christian Hui'),
                    Text('David Liem'),
                    Text('Delia Sepiana'),
                    Text('FAJRUL KAMAL'),
                    Text('GHAZI FARHANU DISASMORO'),
                    Text('HIDAYAH DANIAWATI'),
                    Text('JUHARMANSAH'),
                    Text('KATARINA ANDREA LAURENTIA'),
                    Text('MUHAMMAD AFRIZAL RASYID'),
                    Text('MUHAMMAD ARARYA HAFIZH ATHALLA'),
                    Text('MUHAMMAD ILHAM'),
                    Text('MUHAMMAD NGURAH ARYA PRATAMA'),
                    Text('MUSTIKA CHAIRANI'),
                    Text('NURMALASARI'),
                    Text('Phrimus Nufeto'),
                    Text('PUTRI DIANA HAFSYAWATI'),
                    Text('RACHAEL NATHASYA'),
                    Text('RAFI TAUFIQURAHMAN'),
                    Text('RAMADHAN PUTRA NUGRAHA'),
                    Text('YUNITA ANGGERAINI'),
                  ]
                      // itemCount: 25,
                      // itemBuilder: (BuildContext context, int index) {
                      //   return ListTile(
                      //     title: Text('Anak Didik ke-$index'),
                      //);
                      // },
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
