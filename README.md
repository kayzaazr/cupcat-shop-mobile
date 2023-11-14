# cupcat_shop

##  Tugas 8
### Jelaskan perbedaan antara `Navigator.push()` dan `Navigator.pushReplacement()`, disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

`Navigator.push()` dan `Navigator.pushReplacement()` adalah dua metode yang digunakan dalam Flutter untuk menavigasi antara layar (routes) dalam aplikasi. Perbedaan utama antara keduanya terletak pada cara mereka memanipulasi tumpukan navigasi.

1. Navigator.push()
Metode Navigator.push() digunakan untuk menambahkan rute baru ke tumpukan navigasi. Ini berarti bahwa rute sebelumnya tetap ada dalam tumpukan dan pengguna dapat kembali ke rute sebelumnya dengan menggunakan tombol kembali perangkat atau dengan metode Navigator.pop().

Contoh penggunaan Navigator.push():
```
// Navigasi ke halaman kedua
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => SecondScreen()),
);
```
2. Navigator.pushReplacement()
Metode `Navigator.pushReplacement()` digunakan untuk mengganti rute saat ini dengan rute baru. Ini menghapus rute saat ini dari tumpukan dan menambahkan rute baru ke tumpukan. Pengguna tidak dapat kembali ke rute sebelumnya setelah menggunakan `pushReplacement()`.

Contoh penggunaan Navigator.pushReplacement():
```
// Mengganti halaman saat ini dengan halaman kedua
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => SecondScreen()),
);
```

### Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
1. Container: Container adalah widget yang dapat mengandung widget lain dan memberikan kontrol atas properti seperti padding, margin, dan dekorasi.
Konteks Penggunaan: Digunakan untuk mengelompokkan dan mengatur widget lain dengan memberikan properti seperti padding, margin, dan dekorasi.
2. Column: Column adalah widget yang mengatur anak-anaknya dalam kolom vertikal.
Konteks Penggunaan: Berguna ketika Anda ingin menyusun widget secara vertikal, seperti dalam daftar atau tata letak kolom pada layar.
3. Row: Row adalah widget yang mengatur anak-anaknya dalam baris horizontal.
Konteks Penggunaan: Cocok untuk menyusun widget secara horizontal, seperti dalam baris tombol atau tata letak baris pada layar.
4. ListVie: ListView adalah widget yang menyusun anak-anaknya dalam daftar bergulir.
Konteks Penggunaan: Ideal untuk menampilkan daftar elemen yang mungkin lebih besar dari layar, seperti daftar kontak atau pesan.
5. GridView: GridView adalah widget yang menyusun anak-anaknya dalam bentuk grid.
Konteks Penggunaan: Berguna ketika Anda ingin menampilkan elemen dalam bentuk grid, seperti galeri gambar atau tampilan produk.
6. Stack: Stack adalah widget yang menyusun anak-anaknya secara tumpuk, satu di atas yang lain.
Konteks Penggunaan: Digunakan untuk menyusun widget secara bersamaan, seperti tumpukan kartu atau tata letak lapisan pada layar.

### Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
1. TextFormField digunakan untuk mengambil input teks seperti nama, harga, dan deskripsi.
Memiliki dukungan untuk validasi input melalui properti validator, memastikan bahwa data yang dimasukkan sesuai dengan aturan yang diinginkan.
Memungkinkan untuk menyesuaikan tampilan input, seperti menambahkan placeholder, label, dan border melalui properti decoration.
2. ElevatedButton digunakan untuk memicu aksi simpan formulir.
Memberikan tombol yang dapat diklik untuk memicu aksi terkait formulir, dalam hal ini, menyimpan data produk ke daftar.

### Bagaimana penerapan clean architecture pada aplikasi Flutter?
Penerapan Clean Architecture pada aplikasi Flutter melibatkan pemisahan kode ke dalam lapisan-lapisan yang berbeda, dengan setiap lapisan memiliki tanggung jawab dan aturan tertentu. Berikut adalah tiga lapisan utama Clean Architecture dan penerapannya dalam konteks Flutter:

1. Domain Layer:
Entities: Model objek bisnis
Repositories: Interface untuk mengakses data.
Use Cases / Interactors: Aturan bisnis aplikasi.

3. Data Layer:
Repositories Implementations: Implementasi dari repository untuk mendapatkan data dari sumber eksternal.
Data Models: Representasi data yang diperoleh dari sumber eksternal.

5. Presentation Layer:
UI (User Interface): Menampilkan informasi dan menerima input dari pengguna. ViewModels / Presenters: Mengelola logika presentasi dan berinteraksi dengan use cases. Dependency Injection (DI): Menggunakan DI untuk menyediakan dependensi pada lapisan Presentation.

### Step by Step
1. Saya membuat folder baru bernama widgets yang berisikan file `left_drawer.dart`.
2. impor halaman-halaman yang ingin dimasukkan navigasinya ke dalam `left_drawer.dart`.
3. Memasukkan drawer tersebut ke halaman yang ingin ditambahkan drawer (`menu.dart`, `shoplist_form.dart`, dan `shopitem_list.dart`)
4. Membuat folder screens dengan file baru `shopitem_list.dart`.
5. Membuat widget `TextFormField` untuk input dan `ElevatedButton` untuk tombol submit.
6. Untuk memunculkan data saya menambahkan fungsi `showDialog()` di bagian `onPressed()` pada widget `ElevatedButton` dan munculkan widget `AlertDialog` berisikan detail (nama, price, deskripsi, sweetness, amount) dari product.

Bonus
1. Membuat List baru products pada folder main.dart
```
List<Cupcat> products = [];
```
2. Menambahkan file baru shopitem_list.dart pada folder screens untuk memunculkan produk-produk yang pernah dibuat.
3. Membuat fungsi untuk membuat objek baru dari class Cupcat, dan menambahkannya ke list products setiap tombol save pada shoplist_form.dart ditekan.
4. Menambahkan file baru shopitem_list.dart pada folder screens untuk memunculkan produk-produk yang pernah dibuat.
5. Membuat objek baru dari class Product
   ```
   class Cupcat {
    final String name;
    final int price;
    final String description;
    final int sweetness;
    final int amount;
 
    Cupcat(this.name, this.price, this.description, this.sweetness, this.amount);
   }

   ```
7. Menambahkan objek baru tersebut ke list products setiap tombol save pada `shoplist_form.dart` ditekan.
8. Membuat ListTile baru dengan nama Lihat Produk pada Left Drawer
Membuat routing dari Left Drawer dan tombol Lihat Produk di home ke page untuk melihat semua produk di `shopitem_list.dart`

<details>
<summary> Tugas 7 </summary>

### Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
Stateless Widget:
1. Tidak memiliki keadaan internal yang berubah setelah widget dibangun. Ini berarti setelah Stateless Widget dibangun, tampilan UI-nya tidak dapat diubah.
2. Biasanya digunakan untuk bagian tampilan yang tidak perlu berubah sepanjang waktu, seperti teks statis, ikon, atau komponen UI yang tidak tergantung pada keadaan.
3. Stateless Widget lebih efisien dalam hal kinerja karena tidak perlu melacak perubahan keadaan internal.

Stateful Widget:
1. Memiliki keadaan internal yang dapat berubah. Ini berarti dapat mengubah tampilan UI berdasarkan perubahan dalam keadaan internal.
2. Biasanya digunakan ketika memiliki komponen UI yang bergantung pada data dinamis, seperti formulir input, daftar data yang dapat diperbarui, atau komponen yang memerlukan interaksi pengguna.
3. Stateful Widget mengimplementasikan dua kelas terpisah: kelas StatefulWidget untuk mengelola keadaan dan kelas State yang digunakan untuk memelihara keadaan.

### Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
Pada tugas ini, saya menggunakan Stateless Widget. Saya memiliki `class HomePage extends StatelessWidget`. Pada class ini, terdapat list item untuk button, seperti
```
 final List<ShopItem> items = [
    ShopItem("Lihat Item", Icons.checklist, Colors.lightBlue),
    ShopItem("Tambah Item", Icons.add_shopping_cart, Colors.amber),
    ShopItem("Logout", Icons.logout, Colors.red),
];
```
Lalu, dibawahnya terdapat `Widget build(BuildContext context)` dimana saya menaruh title, grid layout widget, serta style font.

Selain pada class HomePage, saya memiliki `class ShopCard extends StatelessWidget`. Pada class tersebut terdapat juga `Widget build(BuildContext context)` yang akan meng-return Material seperti color: item.color, lalu respons memunculkan snackbar ketika button diklik, dan juga terdapat container untuk menyimpan icon serta text pada button.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
1. Membuat class ShopItem dengan atribut berikut,
   ```
   class ShopItem {
      final String name;
      final IconData icon;
      final Color color;
      ShopItem(this.name, this.icon, this.color);
    }
   ```
2. Membuat 3 button Item, yang dideklarasikan pada list dengan tipe object ShopItem pada class `MyHomePage extends StatelessWidget`,
```
final List<ShopItem> items = [
    ShopItem("Lihat Item", Icons.checklist, Colors.lightBlue),
    ShopItem("Tambah Item", Icons.add_shopping_cart, Colors.amber),
    ShopItem("Logout", Icons.logout, Colors.red),
];
```
Sesuai dengan atribut yang dimiliki oleh class ShopItem, saya memberi warna yang berbeda-beda pada setiap item.
3. Menambahkan `class ShopCard extends StatelessWidget` dan mendefinisikan variable `item` dengan tipe ShopItem.
4. Override `Widget build(BuildContext context)` yang di dalamnya meng-return `color: item.color`.
5. Lalu akan mengreturn sebuah function onTap untuk memunculkan respons snackbar setelah button diklik.
   ```
   ...
   onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
        },
   ```
</details>
