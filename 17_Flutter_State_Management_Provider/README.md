3 poin yang dipelajari dari materi 17_Flutter_State_Management_Provider

--Pengertian State dan fungsinya

> > Data yang dapat dibaca saat pembuatan widget dan dapat berubah saat widget sedang aktif
> > State hanya dimiliki oleh StatefulWidget
> > Memanfaat State : Dibuat sebagai property dari class, digunakan pada widget saat build

--Mengimplementasikan State
class CounterProvider with ChangeNotifier {
int count = 0;

void increment() {
count++;
notifyListeners();
}
}

--Pengertian Global State dan cara implementasinya
Global State merupakan state biasa yang dapat digunakan pada seluruh widget
Menggunakan provider state management, perlu di install agar dapat digunakan dengan flutter pub get
