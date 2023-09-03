//nomor 1
// Buatlah Class bangun datar dengan spesifikasi sesuai pada gambar di bawah ini
// class BangunRuang {
//   int panjang;
//   int lebar;
//   int tinggi;

//   BangunRuang(this.panjang, this.lebar, this.tinggi);

//   int volume() {
//     return panjang * lebar * tinggi;
//   }
// }

// class Kubus extends BangunRuang {
//   int sisi;

//   Kubus(this.sisi) : super(sisi, sisi, sisi);
// }

// class Balok extends BangunRuang {
//   Balok(int panjang, int lebar, int tinggi) : super(panjang, lebar, tinggi);
// }

//nomor 2
// Dari rangkaian Class di atas, buatlah method Overriding untuk membedakan tiap proses dalam method
// antar Class! Sehingga dapat melengkapi penggunaan code di bawah ini
class BangunRuang {
  int panjang;
  int lebar;
  int tinggi;

  BangunRuang(this.panjang, this.lebar, this.tinggi);

  int volume() {
    return panjang * lebar * tinggi;
  }
}

class Kubus extends BangunRuang {
  int sisi;

  Kubus(this.sisi) : super(sisi, sisi, sisi);

  @override
  int volume() {
    return sisi * sisi * sisi; // Override method volume untuk Kubus
  }
}

class Balok extends BangunRuang {
  Balok(int panjang, int lebar, int tinggi) : super(panjang, lebar, tinggi);

  @override
  int volume() {
    return panjang * lebar * tinggi; // Override method volume untuk Balok
  }
}

void main() {
  Kubus kubus = Kubus(15);
  Balok balok = Balok(9, 4, 2);

  print("Volume Kubus: ${kubus.volume()}"); // menampilkan output
  print("Volume Balok: ${balok.volume()}"); // menapilkan output
}
