// 1. buat sebuah function yang menghitung jumlah dari pembelian buku,  pensil, dan tas
// 2. buatlah function yang menghitung diskon dari variabel total pembelian.
// 3. buatlah function yang menghitung Total pembelian setelah diskon

double buku = 10000;
double pensil = 5000;
double tas = 100000;

double totalPembayaran = 200000;
double diskon = 0.1;

//1. function yang menghitung jumlah dari pembelian buku, pensil, dan tas
double calculateTotalPurchase() {
  double total = 5*buku + 10*pensil + tas;
  return total;
}

//2. function yang menghitung diskon dari variabel total pembelian
double calculateDiscount() {
  double jumlahDiskon = totalPembayaran * diskon;
  return jumlahDiskon;
}

//3. function yang menghitung Total pembelian setelah diskon
double calculateTotalAfterDiscount() {
  double totalSetelahDiskon = totalPembayaran - calculateDiscount();
  return totalSetelahDiskon;
}

void main() {
  double total = calculateTotalPurchase();
  double jumlahDiskon = calculateDiscount();
  double totalSetelahDiskon = calculateTotalAfterDiscount();
  print("Total pembelian: $total");
  print("Total diskon: $jumlahDiskon");
  print("Total pembayaran setelah diskon: $totalSetelahDiskon");
}