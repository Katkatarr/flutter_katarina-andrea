//1. Buat 3 buah variabel yang menampung tipe data String, lalu sambungkan 3 variabel tersebut dan tampilkan pada layar.
//deklarasi variabel
String namaDepan = "Katarina ";
String namaTengah = "Andrea ";
String namaBelakang = "Laurentia";

//menggabungkan 3 string
String namaLengkap = namaDepan + namaTengah + namaBelakang;

//pemanggilan variabel pada fungsi main()
void main(){
  print('Halo semua perkenalkan nama saya $namaLengkap');
}

//2. Implementasikan rumus volume dari tabung (silinder) dengan menggunakan Bahasa Dart.
// Deklarasikan variabel
double jariJari = 5;
double tinggi = 10;
double pi = 3.14;

// Hitung volume
double volume = pi * jariJari * jariJari * tinggi;

//pemanggilan variabel pada fungsi main()
void main(){
  print("Volume Tabung : $volume"); // Menampilkan hasil perhitungan
}