// Selanjutnya pada class Mobil, tambahkan method totalMuatan untuk menghitung total muatan yang diangkut oleh mobil tersebut!

class Mobil {
  int kapasitas;
  late List<Hewan> muatan;

  Mobil(this.kapasitas) {
    this.muatan = [];
  }

  bool tambahMuatan(Hewan hewan) {
    if (kapasitas >= (totalBeratMuatan() + hewan.berat)) {
      muatan.add(hewan);
      return true;
    } else {
      print("Kapasitas mobil tidak mencukupi.");
      return false;
    }
  }

  int totalBeratMuatan() {
    int totalBerat = 0;
    for (var hewan in muatan) {
      totalBerat += hewan.berat;
    }
    return totalBerat;
  }

  @override
  String toString() {
    String result = "Muatan mobil:\n";
    for (var hewan in muatan) {
      result += "${hewan.nama} (${hewan.berat} kg)\n";
    }
    return result;
  }
}

class Hewan {
  String nama;
  int berat;

  Hewan(this.nama, this.berat);
}

void main() {
  Mobil mobil = Mobil(1000);
  Hewan kucing = Hewan("Kucing", 1000);
  Hewan anjing = Hewan("Anjing", 20);

  if (mobil.tambahMuatan(kucing)) {
    print("Kucing ditambahkan ke dalam mobil.");
  }

  if (mobil.tambahMuatan(anjing)) {
    print("Anjing ditambahkan ke dalam mobil.");
  }

  print(mobil);
}
