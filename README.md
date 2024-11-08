# Flihid\_Market

Nama : Mohamad Rafli Hidayat  
NPM : 2306245831  
Kelas : A  

<details>
  <summary><b>Tugas 7</b></summary>

1. **Jelaskan apa yang dimaksud dengan *stateless widget* dan *stateful widget*, dan jelaskan perbedaan dari keduanya.**  

Stateless widget adalah widget yang tidak memiliki state yang dapat berubah setelah dibuat. Artinya, tampilan dan sifatnya tetap sama selama aplikasi berjalan, hanya bergantung pada input atau konfigurasi awal. Contoh stateless widget adalah teks atau ikon yang tidak berubah berdasarkan interaksi pengguna.

Stateful widget, sebaliknya, dapat memiliki state yang berubah seiring waktu, seperti ketika pengguna berinteraksi dengan aplikasi. Perubahan ini dapat mengubah tampilan atau perilaku widget. Stateful widget digunakan untuk elemen yang dinamis dan interaktif, seperti formulir atau tombol dengan animasi yang merespons input pengguna.

2. **Sebutkan *widget* apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.**  

Pada proyek ini digunakan widget seperti `Scaffold`, yang menyediakan struktur dasar halaman dengan AppBar dan body. `AppBar` digunakan untuk menampilkan judul aplikasi di bagian atas layar. `Padding` dan `SizedBox` digunakan untuk memberikan jarak di sekitar widget. `Column` dan `Row` digunakan untuk menyusun widget secara vertikal dan horizontal. `Card` digunakan untuk menampilkan informasi dalam kotak dengan bayangan, sedangkan `Material` dan `InkWell` digunakan untuk membuat tombol dengan efek respons saat ditekan. `GridView.count` digunakan untuk menampilkan item dalam bentuk grid, dan `Icon` serta `Text` digunakan untuk menampilkan ikon dan teks pada tombol-tombol.

3. **Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.**  

Fungsi `setState()` digunakan dalam widget stateful untuk memberi tahu framework bahwa ada perubahan pada state yang memerlukan pembaruan UI. Ketika `setState()` dipanggil, widget akan dirender ulang dengan nilai terbaru, sehingga perubahan apa pun yang mempengaruhi tampilan akan langsung terlihat.

Variabel yang dapat terdampak oleh `setState()` adalah variabel yang disimpan dalam state widget, seperti variabel yang menyimpan data interaksi pengguna, status logika aplikasi, atau data yang perlu ditampilkan ulang ketika berubah, seperti nilai input, hitungan, atau status aktif/inaktif dari elemen tertentu.

4. **Jelaskan perbedaan antara `const` dengan `final`.**  

`const` dan `final` digunakan untuk mendeklarasikan nilai yang tidak dapat diubah, namun memiliki perbedaan dalam penggunaannya. `const` digunakan untuk nilai yang bersifat konstan pada waktu kompilasi, artinya nilai harus diketahui dan tetap sejak awal. Semua objek yang didefinisikan dengan `const` adalah immutable dan bisa digunakan secara global.

Sementara itu, `final` digunakan untuk nilai yang bersifat tetap setelah diinisialisasi, tetapi nilainya bisa dihasilkan pada saat runtime. Dengan `final`, objek tidak dapat diubah setelah ditetapkan, tetapi tidak harus diketahui pada saat kompilasi seperti `const`, sehingga cocok untuk nilai yang baru diketahui saat runtime.

5. **Jelaskan bagaimana cara kamu mengimplementasikan *checklist-checklist* di atas.**  
1) Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya.

Saya membuat program Flutter baru dengan tema E-Commerce bernama "Flihid Market Mobile" yang terdiri dari widget untuk menampilkan daftar produk, menambah produk, dan logout.

2) Membuat tiga tombol sederhana dengan ikon dan teks untuk Melihat daftar produk, Menambah produk, dan Logout.

Tiga tombol sederhana dengan ikon dan teks dibuat menggunakan widget `ItemCard`, yang ditampilkan dalam grid pada halaman utama. Tombol tersebut diberi teks "Lihat Daftar Produk," "Tambah Produk," dan "Logout" dengan ikon masing-masing.

3) Mengimplementasikan warna-warna yang berbeda untuk setiap tombol.

Setiap tombol diberi warna yang berbeda dengan menambahkan properti `color` pada `ItemHomepage` dan menggunakannya di dalam `ItemCard`. Tombol "Lihat Daftar Produk" berwarna biru, "Tambah Produk" berwarna hijau, dan "Logout" berwarna merah.

4) Memunculkan Snackbar dengan tulisan.

Saya mengimplementasikan `InkWell` untuk mendeteksi aksi ketika tombol ditekan, dan menggunakan `ScaffoldMessenger` untuk memunculkan Snackbar dengan pesan yang berbeda sesuai dengan tombol yang ditekan, yaitu `"Kamu telah menekan tombol [nama tombol]"` yang disesuaikan dengan tombolnya.

5) Selanjutnya saya mendokumentasi dalam file ‘README.md’ untuk menjawab beberapa pertanyaan tentang perbedaan *stateless widget* dan *stateful widget*, *widget* apa saja yang saya gunakan pada proyek ini, fungsi dari `setState()` dan variabel apa saja yang dapat terdampak dengan fungsi tersebut, dan perbedaan antara `const` dengan `final`
6) Terakhir saya melakukan `add`, `commit`, dan `push` ke GitHub untuk mengunggah kode dan dokumentasi proyek ke repositori.

</details>

<details>
  <summary><b>Tugas 8</b></summary>

1. **Apa kegunaan `const` di Flutter? Jelaskan apa keuntungan ketika menggunakan `const` pada kode Flutter. Kapan sebaiknya kita menggunakan `const`, dan kapan sebaiknya tidak digunakan?**

`Const` dalam Flutter digunakan untuk mendeklarasikan nilai atau widget yang tidak berubah selama *runtime*. Dengan kata lain, jika suatu widget atau variabel menggunakan `const`, nilai tersebut sudah tetap sejak awal dan tidak akan berubah sepanjang siklus hidup aplikasi. Hal ini sangat berguna karena memungkinkan Flutter untuk melakukan optimisasi, terutama dalam hal efisiensi dan performa. Dengan penggunaan `const`, Flutter dapat mendeteksi bahwa objek tersebut selalu sama sehingga tidak perlu membuat ulang objek tersebut setiap kali aplikasi perlu menggunakannya kembali, yang menghemat sumber daya dan mempercepat *rendering*.

Keuntungan dari penggunaan `const` adalah peningkatan performa dan efisiensi memori karena Flutter tidak perlu membuat ulang elemen yang sudah didefinisikan sebagai konstan. Ini sangat penting dalam aplikasi yang memiliki banyak elemen UI statis atau tidak berubah. Sebaiknya `const` digunakan ketika kita yakin nilai atau widget tersebut tidak akan mengalami perubahan sama sekali selama aplikasi berjalan, seperti pada elemen UI yang statis. Namun, jika elemen tersebut bersifat dinamis atau berubah-ubah, penggunaan `const` tidak diperlukan dan bahkan bisa menghambat fleksibilitas aplikasi.

2. **Jelaskan dan bandingkan penggunaan *Column* dan *Row* pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!**

Dalam Flutter, *Column* dan *Row* adalah widget dasar yang digunakan untuk mengatur tata letak elemen secara vertikal dan horizontal. Widget *Column* menyusun anak-anaknya secara vertikal dari atas ke bawah, sehingga cocok digunakan ketika kita ingin menampilkan elemen dalam satu kolom. Sebaliknya, *Row* menyusun anak-anaknya secara horizontal dari kiri ke kanan, sehingga cocok untuk tata letak elemen dalam satu baris. Keduanya sangat fleksibel dan sering digunakan bersama dengan widget lain seperti *Expanded* dan *Flexible* untuk mengatur ruang antar-elemen dan menyesuaikan ukuran komponen dalam tata letak yang responsif.

Sebagai contoh, implementasi sederhana untuk *Column* dapat berupa kode berikut: `Column(children: [Text('Item 1'), Text('Item 2')])`, yang akan menampilkan teks "Item 1" di atas "Item 2". Sedangkan untuk *Row*, kode implementasi sederhana adalah `Row(children: [Text('Item 1'), Text('Item 2')])`, yang akan menampilkan "Item 1" di samping "Item 2". Kedua widget ini memungkinkan pengembang untuk menciptakan *interface* pengguna yang dinamis dan mudah disesuaikan di aplikasi Flutter.

3. **Sebutkan apa saja elemen input yang kamu gunakan pada halaman *form* yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!**

Pada halaman form yang saya buat kali ini, saya menggunakan tiga elemen input utama yaitu `TextFormField` untuk mengumpulkan data nama, jumlah (amount), dan deskripsi dari item yang ditambahkan. Setiap elemen ini memiliki validasi untuk memastikan bahwa input yang diberikan sesuai dengan tipe data yang diharapkan dan tidak boleh kosong. Selain itu, form ini juga dilengkapi dengan tombol "Save" untuk menyimpan data input.

Ada beberapa elemen input Flutter lain yang tidak saya gunakan dalam tugas ini, seperti `Checkbox`, `Radio`, `Switch`, dan `DropdownButton`. Elemen-elemen ini biasanya digunakan untuk pilihan-pilihan seleksi, seperti memilih opsi ya atau tidak, atau memilih satu dari beberapa pilihan.

4. **Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?**

Untuk mengatur tema dalam aplikasi Flutter agar konsisten, saya menggunakan `ThemeData` di dalam widget `MaterialApp`. Dengan `ThemeData`, saya bisa mengatur elemen-elemen seperti skema warna, gaya teks, dan bentuk widget yang digunakan di seluruh aplikasi. Ini memungkinkan saya untuk mendefinisikan warna utama (`colorScheme.primary`) dan warna sekunder sehingga seluruh komponen aplikasi mengikuti skema warna yang seragam dan tampilan menjadi konsisten.

Pada aplikasi yang saya buat, saya telah mengimplementasikan tema dengan mengatur `colorScheme` di `ThemeData` untuk memastikan aplikasi memiliki nuansa warna yang sesuai di setiap halaman dan komponen, seperti AppBar dan tombol, tanpa perlu mengatur ulang tema di setiap widget secara manual.

5. **Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?**

Untuk menangani navigasi dalam aplikasi Flutter yang memiliki banyak halaman, saya menggunakan metode `Navigator.push` dan `Navigator.pop`. `Navigator.push` digunakan untuk menambahkan halaman baru ke dalam stack navigasi, sehingga memungkinkan pengguna untuk berpindah ke halaman lain, sementara `Navigator.pop` digunakan untuk kembali ke halaman sebelumnya dengan menghapus halaman terkini dari stack. Metode ini memungkinkan navigasi antar halaman yang sederhana dan efisien.

Selain itu, pada `MaterialApp`, saya bisa mendefinisikan `routes` untuk mendukung navigasi berbasis nama, yang membuat pengaturan navigasi lebih terstruktur dan memudahkan pemeliharaan. Dengan pendekatan ini, saya cukup memanggil nama rute yang telah didefinisikan ketika ingin berpindah halaman, tanpa perlu mengatur ulang halaman tujuan setiap kali berpindah, sehingga manajemen halaman lebih konsisten dalam aplikasi yang kompleks.

</details>