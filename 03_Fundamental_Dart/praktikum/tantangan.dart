//buat variable yang berfungsi untuk menghitung keliling persegi panjang dan segitiga

int panjang = 5;
int lebar = 6;
int sisi = 10;
int kelPersegiPanjang = 2 * (panjang + lebar);
int kelSegitiga = 3 * sisi;

void main(){
  print('keliling persegi panjang dengan panjang= $panjang dan lebar = $lebar adalah $kelPersegiPanjang');
  print('keliling persegi panjang dengan panjang semua sisi = $sisi adalah $kelSegitiga');
}