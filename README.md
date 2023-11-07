# cupcat_shop

## Tugas 7

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
