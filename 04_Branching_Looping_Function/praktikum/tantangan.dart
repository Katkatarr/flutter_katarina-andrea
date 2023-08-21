// 1. buat sebuah function yang menghitung jumlah dari pembelian buku,  pensil, dan tas
// 2. buatlah function yang menghitung diskon dari variabel total pembelian.
// 3. buatlah function yang menghitung Total pembelian setelah diskon

double buku = 10000;
double pensil = 5000;
double tas = 100000;

double totalPurchase = 200000;
double discount = 0.1;

//1. function yang menghitung jumlah dari pembelian buku, pensil, dan tas
double calculateTotalPurchase() {
  double total = 5*buku + 10*pensil + tas;
  return total;
}

//2. function yang menghitung diskon dari variabel total pembelian
double calculateDiscount() {
  double discountAmount = totalPurchase * discount;
  return discountAmount;
}

//3. function yang menghitung Total pembelian setelah diskon
double calculateTotalAfterDiscount() {
  double totalAfterDiscount = totalPurchase - calculateDiscount();
  return totalAfterDiscount;
}

void main() {
  double total = calculateTotalPurchase();
  double discountAmount = calculateDiscount();
  double discountedTotal = calculateTotalAfterDiscount();
  print("Total Purchase Amount: $total");
  print("Discount Amount: $discountAmount");
  print("Total Purchase Amount After Discount: $discountedTotal");
}