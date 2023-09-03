// Buatlah sebuah program berdasarkan class diagram berikut:
// Kriteria dari program yang dibuat adalah sebagai berikut:

// Buat class beserta interface sesuai dengan class diagram diatas.
// Method getArea() digunakan untuk menghitung luas bangun datar.
// Method getPerimeter() digunakan untuk menghitung keliling bangun datar.
// Output yang harus ditampilkan adalah luas dan keliling untuk tiga bangun datar berdasarkan di class diagram.

abstract class BangunDatar {
  double getArea();
  double getParameter();
}

class PersegiPanjang implements BangunDatar {
  double panjang;
  double lebar;

  PersegiPanjang(this.panjang, this.lebar);

  @override
  double getArea() {
    return panjang * lebar;
  }

  @override
  double getParameter() {
    return 2 * (panjang + lebar);
  }
}

class Lingkaran implements BangunDatar {
  double jariJari;

  Lingkaran(this.jariJari);

  @override
  double getArea() {
    return 3.14 * jariJari * jariJari;
  }

  @override
  double getParameter() {
    return 2 * 3.14 * jariJari;
  }
}

class Segitiga implements BangunDatar {
  double alas;
  double tinggi;
  double sisi1;
  double sisi2;
  double sisi3;

  Segitiga(this.alas, this.tinggi, this.sisi1, this.sisi2, this.sisi3);

  @override
  double getArea() {
    return 0.5 * alas * tinggi;
  }

  @override
  double getParameter() {
    return sisi1 + sisi2 + sisi3;
  }
}
