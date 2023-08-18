// Buatlah rumus keliling dan luas persegi dan persegi panjang dengan menggunakan bahasa pemrograman Dart
int panjang = 5;
int lebar = 6;
int sisi = 10;
int kelPersegi = 4 * sisi;
int kelPersegiPanjang = 2 * (panjang + lebar);
int luasPersegi = sisi * sisi;
int luasPersegiPanjang = panjang * lebar;


void main(){
  //mencetak keliling dan luas persegi
  print('keliling persegi dengan panjang semua sisi = $sisi adalah $kelPersegi');
  print('luas persegi dengan panjang semua sisi = $sisi adalah $luasPersegi');

  //mencetak keliling dan luas persegi panjang
  print('keliling persegi panjang dengan panjang= $panjang dan lebar = $lebar adalah $kelPersegiPanjang');
  print('luas persegi panjang dengan  panjang= $panjang dan lebar = $lebar  adalah $luasPersegiPanjang');
}