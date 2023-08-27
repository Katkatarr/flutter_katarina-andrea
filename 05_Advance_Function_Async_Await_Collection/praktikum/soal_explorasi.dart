/*
Buatlah sebuah program untuk menghilangkan nilai atau data yang sama pada sebuah data sehingga output akhirnya adalah sekumpulan nilai atau data yang unik.

Sampel Input: [amuse, tommy kaira, spoon, HKS, litchfield, amuse,HKS]
Sampel Output: [amuse, tommy kaira, spoon, HKS, litchfield]
Sampel Input: [JS Racing, amuse, spoon, spoon, JS Racing, amuse]

Sampel Output: [JS Racing, amuse, spoon]
*/

void main() {
  List<String> data = [
    "amuse",
    "tommy kaira",
    "spoon",
    "HKS",
    "litchfield",
    "amuse",
    "HKS"
  ];
  Set<String> dataSet = Set.from(data);
  List<String> dataUnik = dataSet.toList();
  print("Sampel Input: $data");
  print("Sampel Output: $dataUnik");
}

/*
Buatlah sebuah program untuk menghitung frekuensi pada setiap data di dalam sebuah list. Frekuensi merupakan jumlah kemunculan data di dalam list.

Sampel Input: [js,js,js,golang,python,js,js,golang,rust]

 Sampel Output: js: 5, golang: 2, python: 1, rust: 1
*/
void main() {
  List<String> data = [
    "js",
    "js",
    "js",
    "golang",
    "python",
    "js",
    "js",
    "golang",
    "rust"
  ];
  Map<String, int> frekuensi = {};
  for (int i = 0; i < data.length; i++) {
    if (frekuensi.containsKey(data[i])) {
      frekuensi[data[i]] = frekuensi[data[i]]! + 1;
    } else {
      frekuensi[data[i]] = 1;
    }
  }
  print("Data: $data");
  print("Frekuensi: $frekuensi");
}
