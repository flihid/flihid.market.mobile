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

Pada halaman form yang saya buat kali ini, saya menggunakan tiga elemen input utama yaitu `TextFormField` untuk mengumpulkan data nama, price (harga), dan deskripsi dari item yang ditambahkan. Setiap elemen ini memiliki validasi untuk memastikan bahwa input yang diberikan sesuai dengan tipe data yang diharapkan dan tidak boleh kosong. Selain itu, form ini juga dilengkapi dengan tombol "Save" untuk menyimpan data input.

Ada beberapa elemen input Flutter lain yang tidak saya gunakan dalam tugas ini, seperti `Checkbox`, `Radio`, `Switch`, dan `DropdownButton`. Elemen-elemen ini biasanya digunakan untuk pilihan-pilihan seleksi, seperti memilih opsi ya atau tidak, atau memilih satu dari beberapa pilihan.

4. **Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?**

Untuk mengatur tema dalam aplikasi Flutter agar konsisten, saya menggunakan `ThemeData` di dalam widget `MaterialApp`. Dengan `ThemeData`, saya bisa mengatur elemen-elemen seperti skema warna, gaya teks, dan bentuk widget yang digunakan di seluruh aplikasi. Ini memungkinkan saya untuk mendefinisikan warna utama (`colorScheme.primary`) dan warna sekunder sehingga seluruh komponen aplikasi mengikuti skema warna yang seragam dan tampilan menjadi konsisten.

Pada aplikasi yang saya buat, saya telah mengimplementasikan tema dengan mengatur `colorScheme` di `ThemeData` untuk memastikan aplikasi memiliki nuansa warna yang sesuai di setiap halaman dan komponen, seperti AppBar dan tombol, tanpa perlu mengatur ulang tema di setiap widget secara manual.

5. **Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?**

Untuk menangani navigasi dalam aplikasi Flutter yang memiliki banyak halaman, saya menggunakan metode `Navigator.push` dan `Navigator.pop`. `Navigator.push` digunakan untuk menambahkan halaman baru ke dalam stack navigasi, sehingga memungkinkan pengguna untuk berpindah ke halaman lain, sementara `Navigator.pop` digunakan untuk kembali ke halaman sebelumnya dengan menghapus halaman terkini dari stack. Metode ini memungkinkan navigasi antar halaman yang sederhana dan efisien.

Selain itu, pada `MaterialApp`, saya bisa mendefinisikan `routes` untuk mendukung navigasi berbasis nama, yang membuat pengaturan navigasi lebih terstruktur dan memudahkan pemeliharaan. Dengan pendekatan ini, saya cukup memanggil nama rute yang telah didefinisikan ketika ingin berpindah halaman, tanpa perlu mengatur ulang halaman tujuan setiap kali berpindah, sehingga manajemen halaman lebih konsisten dalam aplikasi yang kompleks.

</details>

<details>
  <summary><b>Tugas 9</b></summary>

1. **Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?**

Membuat model untuk pengambilan atau pengiriman data JSON penting karena model berfungsi sebagai struktur atau kerangka untuk mengelola data yang diterima atau dikirim. Dengan model, data dapat diatur sesuai format yang konsisten, sehingga lebih mudah untuk divalidasi, diolah, dan diintegrasikan dengan sistem. Selain itu, model membantu memastikan bahwa data yang diterima sesuai dengan kebutuhan aplikasi, menghindari potensi masalah yang dapat muncul akibat format atau tipe data yang tidak sesuai.

Jika model tidak dibuat terlebih dahulu, kemungkinan error akan lebih besar, terutama jika data JSON yang diterima memiliki format yang tidak sesuai dengan ekspektasi aplikasi. Misalnya, jika atribut yang diperlukan hilang atau tipenya salah, aplikasi mungkin mengalami error saat mencoba mengakses atau memproses data. Dengan model, potensi kesalahan ini dapat dicegah karena model menyediakan mekanisme validasi yang memastikan data sesuai sebelum digunakan lebih lanjut.

2. **Jelaskan fungsi dari library *http* yang sudah kamu implementasikan pada tugas ini**

Library *http* yang saya implementasikan pada tugas ini digunakan untuk mengelola komunikasi antara aplikasi Flutter dengan server melalui protokol HTTP. Fungsi utamanya adalah untuk melakukan berbagai operasi seperti pengambilan data (*GET*), pengiriman data dengan format JSON (*POST*), serta autentikasi pengguna seperti pendaftaran (*register*), masuk (*login*), dan keluar (*logout*). Dengan library ini, aplikasi dapat mengirimkan permintaan ke endpoint server yang sesuai, mengelola payload data, serta menerima respons dari server untuk menampilkan atau memproses informasi lebih lanjut.

Pada tugas ini, library *http* berperan sebagai penghubung antara aplikasi dan backend, memungkinkan implementasi fitur berbasis web secara efisien. Misalnya, fitur pendaftaran dan login memanfaatkan metode *POST* untuk mengirimkan data kredensial pengguna ke server, sementara metode *GET* digunakan untuk mengambil data JSON dari server. Dengan cara ini, aplikasi dapat berinteraksi dengan server secara dinamis, memastikan data selalu terkini sesuai respons yang diterima.

3. **Jelaskan fungsi dari CookieRequest dan jelaskan mengapa *instance* CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.**

CookieRequest adalah sebuah *helper* yang digunakan dalam aplikasi Flutter untuk menangani komunikasi HTTP dengan server sambil mempertahankan sesi pengguna. CookieRequest bekerja dengan cara menyimpan dan mengelola *cookie* yang diterima dari server, memungkinkan aplikasi untuk menjaga status login atau sesi antar permintaan. Dengan ini, pengguna tidak perlu memasukkan kembali informasi login setiap kali mereka mengakses fitur yang memerlukan otentikasi.

Membagikan *instance* CookieRequest ke seluruh komponen aplikasi penting karena hal ini memastikan konsistensi sesi pengguna di setiap bagian aplikasi. Dengan menggunakan *instance* yang sama, semua komponen dapat berbagi informasi yang sama tentang status login atau sesi saat ini, mengurangi risiko ketidaksesuaian data dan meningkatkan efisiensi dalam mengelola permintaan HTTP. Hal ini juga membantu menjaga pengelolaan status pengguna tetap terpusat, yang memudahkan pemeliharaan dan pengembangan aplikasi.

4. **Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.**

Pengiriman data pada Flutter dimulai dengan pengambilan input dari pengguna melalui widget interaktif seperti `TextField`, `DropdownButton`, atau tombol. Input ini diproses oleh kontroler atau model yang telah didefinisikan, seperti `TextEditingController` untuk teks. Data yang diinputkan kemudian dapat dikirim ke backend menggunakan paket seperti `http` atau `dio` untuk melakukan request API, baik dalam format JSON atau lainnya. Setelah data diterima dari backend, respons biasanya diubah menjadi objek atau model menggunakan decoding JSON, seperti dengan `jsonDecode` atau `fromJson`.

Setelah data berhasil diolah atau diterima dari server, data tersebut ditampilkan kembali melalui widget di Flutter. Hal ini dilakukan dengan cara memperbarui state yang digunakan oleh widget terkait. Misalnya, jika data berasal dari server, respons tersebut diproses dan disimpan dalam state, yang kemudian digunakan oleh widget seperti `ListView` atau `GridView` untuk menampilkan data dalam bentuk daftar atau grid. Dengan mekanisme ini, Flutter memastikan bahwa tampilan aplikasi selalu sinkron dengan data yang ada, menciptakan pengalaman pengguna yang dinamis dan responsif.

5. **Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.**

Mekanisme autentikasi dimulai saat pengguna memasukkan data akun (email, username, atau password) di Flutter, baik saat melakukan login maupun register. Flutter mengirimkan data ini melalui request HTTP menggunakan metode POST ke server Django. Pada proses register, Django menerima data ini, memvalidasinya (misalnya, memastikan email belum digunakan), lalu menyimpan data pengguna ke database. Setelah sukses, Django mengembalikan respons berupa token autentikasi atau status berhasil yang akan disimpan oleh Flutter untuk digunakan pada sesi berikutnya. Pada login, data yang dikirimkan Flutter akan diverifikasi oleh Django dengan mencocokkannya dengan data di database. Jika valid, Django mengembalikan token autentikasi yang juga disimpan oleh Flutter untuk mengakses endpoint yang memerlukan otorisasi.

Saat logout, Flutter mengirimkan request ke Django untuk menghapus atau menonaktifkan token autentikasi di server. Setelah proses ini selesai, Django mengembalikan respons yang mengonfirmasi pengguna telah keluar dari sistem. Di sisi Flutter, token autentikasi dihapus dari penyimpanan lokal untuk memastikan sesi telah berakhir. Setelah proses autentikasi (baik login maupun register) berhasil, Flutter akan menampilkan menu atau halaman utama sesuai dengan role atau akses yang ditentukan, menggunakan data yang diterima dari Django untuk menyesuaikan *interface* pengguna.

6. **Jelaskan bagaimana cara kamu mengimplementasikan *checklist-checklist* di atas.**  
1) Fitur Registrasi Akun pada Proyek Tugas Flutter 
Menggunakan form input pada Flutter dengan validasi, kemudian data dikirim ke backend Django menggunakan HTTP POST untuk membuat akun baru di database.

2) Halaman Login pada Proyek Tugas Flutter

Buat halaman dengan form input untuk login. Kirim data login (username/password) ke Django melalui HTTP POST. Django akan menggunakan authenticate() untuk memverifikasi data login. Jika berhasil, Django mengembalikan status berhasil, dan Flutter menyimpan session cookies untuk autentikasi permintaan berikutnya.

3) Mengintegrasikan Sistem Autentikasi Django dengan Flutter

Gunakan autentikasi berbasis session. Setelah login berhasil, Django akan mengembalikan session ID dalam cookies. Di Flutter, simpan cookies ini (menggunakan package seperti http atau dio) dan sertakan pada setiap permintaan HTTP untuk menjaga autentikasi.

4) Membuat Model Kustom di Flutter  

Definisikan model di Dart sesuai kebutuhan aplikasi, dengan model Item dengan atribut seperti name, price, description, dan user. Data dari Django akan diambil dalam format JSON, lalu Decode menjadi instance model Dart menggunakan fungsi fromJson().

5) Halaman Daftar Semua Item (Flutter) 

Menggunakan HTTP GET untuk mengambil data dari endpoint JSON Django yang sudah di-deploy, lalu menampilkan `name`, `price`, dan `description` item dalam tampilan daftar menggunakan widget seperti `ListProduct`.

6) Halaman Detail Item (Flutter) 

Tambahkan navigasi dari halaman daftar item ke halaman detail dengan mengirim parameter ID. Di Flutter, ambil detail item menggunakan HTTP GET berdasarkan ID ke endpoint Django. Decode respons JSON ke dalam instance model Item Dart. Tampilkan semua atribut item di halaman ini menggunakan widget seperti Column. Tambahkan tombol kembali untuk navigasi ke halaman daftar item.

7) Filter Item Berdasarkan Pengguna Login (Django)  

Di Django, tambahkan filter pada endpoint JSON untuk hanya menampilkan item yang terkait dengan pengguna login, menggunakan query `filter(user=request.user)` pada query set. Integrasikan filter ini dalam Flutter sehingga hanya data terkait yang ditampilkan di halaman daftar item.

5) Selanjutnya saya mendokumentasi dalam file ‘README.md’ untuk menjawab beberapa pertanyaan tentang mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON dan Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu, fungsi dari library http yang sudah saya implementasikan pada tugas ini, fungsi dari CookieRequest dan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter, mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter, dan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
6) Terakhir saya melakukan `add`, `commit`, dan `push` ke GitHub untuk mengunggah kode dan dokumentasi proyek ke repositori.

</details>
