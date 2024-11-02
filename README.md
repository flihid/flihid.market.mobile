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