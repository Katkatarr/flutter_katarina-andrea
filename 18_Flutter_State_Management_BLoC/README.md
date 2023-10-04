3 poin yang dipelajari dari materi 18_Flutter_State_Management_BLoC

== Pengertian Declarative UI

> Kondisi dimana flutter membangun UI nya pada screen untuk mencerminkan keadaan state saat ini
> Dua jenis state dalam flutter, ephemeral state dan app state
>
> > Ephemeral state pada Flutter adalah state yang hanya berlaku untuk satu widget atau satu bagian kecil dari widget tree. Ephemeral state tidak perlu dibagikan ke widget lain atau dipertahankan saat aplikasi dijeda atau dimuat ulang.
> > App state pada Flutter adalah data yang dapat berubah-ubah selama aplikasi berjalan. Data ini dapat digunakan untuk mengatur tampilan aplikasi, seperti mengubah warna, font, atau konten.

== pengertian dan implementasi setState

> setState() adalah metode yang digunakan untuk memberitahu Flutter bahwa state dari widget telah berubah. Metode ini akan menyebabkan Flutter membangun ulang widget dan sub-widgetnya.
> Untuk menggunakan setState(), langkah pertama adalah perlu memanggilnya dari dalam State object dari widget

== pengertian dan implementasi BLoC

> BLoC (Business Logic Component) adalah sebuah state management library yang populer untuk aplikasi Flutter. BLoC memungkinkan untuk memisahkan business logic dari presentation logic, sehingga kode yang dibuat menjadi lebih bersih dan mudah dipahami.
> Cara mengimplementasikannya
> 1.Buat event class: Class yang mewakili peristiwa yang terjadi dalam aplikasi.
> 2.Buat state class: Class yang mewakili data yang mewakili status aplikasi.
> 3.Buat bloc class: Class yang menangani events dan states.
> 4.Gunakan bloc class dalam widget Anda: Bloc class dapat digunakan untuk mengakses data state dan mengemit event.
