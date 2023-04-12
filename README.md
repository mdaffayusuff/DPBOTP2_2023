# **DPBO Tugas Praktikum 2**

##### **Nama : Muhammad Daffa Yusuf Fadhilah**
##### **NIM : 2100543**

Saya Muhammad Daffa Yusuf Fadhilah dengan NIM 2100543 mengerjakan evaluasi TP2
dalam mata kuliah Design Pemrograman Berorientasi Objek
untuk keberkahanNya maka saya tidak melakukan kecurangan seperti
yang telah dispesifikasikan. Aamiin.

## **Deskripsi Tugas**
Buatlah program Java yang terkoneksi dengan database MySQL. Berikut spesifikasi program yang harus dibuat:
- Program bebas, kecuali program Mahasiswa dan Book Author
- Terdapat proses Create, Read, Update, dan Delete data
- Terdapat proses Autentikasi (Login, Register)*
- Menggunakan minimal 2 tabel pada database
- Harus terdapat minimal 1 properti gambar pada class yang dibuat (gambar akan ditampilkan pada UI)
- Terdapat pergantian screen pada UI
- Terdapat button navigasi untuk beralih screen
- List data ditampilkan menggunakan card (JPanel). Contoh card dengan JPanel link\
*Boleh login dan/atau register. Tidak perlu ada enkripsi password

## **Design Program**
Program ini merupakan program yang berisi tentang Virtual Youtubr(V-Tuber) yang berada dalam naungan agensi-agensi besar didunia V-Tuber. Terdapat 2 info utama yaitu list dari talent V-Tuber dan juga list dari agensi yang menauingi pada V-Tuber. Berikut penjelasan lebih rincinya.

![Diagram](https://github.com/mdaffayusuff/TP2DPBO2023/blob/main/readmeImg/Diagram.jpg?raw=true)

Terdapat beberapa kelas yang saya buat.
- **_Login_** merupaka sebuah JFRame yang berisikan halama untuk login. Tidak menerima registrasi akun baru dan hanya dapaet melakukan login untuk memasuki
- **_dbConnection_** merupakan sebuah class yang digunakan utnuk menghubungkan applikasi dengan database sehingga dat-data yang dimasukan akan disimpan kedatabase dan pencarian data tersebut juga melalui database. Class ini diComposite si semua kelas karena semua kelas memiliki CRUD nya masing-masing
- **_Main_** merupakan JFrame utama yang berisikan informasi utama. Terdapat 2 tombol nafigasi yang bisa menganti informasi yang ditambilkan, yaitu informasi list talent V-Tuber dan list Agensi V-Tuber. Terdapat juga tombol add yang berfungsi menambanhkan data pada list sesuai dengan list mana yang sedang diperlihatkan. Jika list Talent yang diperlihatkan, makan tombol add akan menambahkan data talent, Begitu juga dengan list agensi
- **_Card_** Merupakan sebuah Jpanel yang memuat suatu info. List yang dibuat pada halaman main tersusun dari Jpanel ini. Card cukup fleksibel penggunaannya. Card ini bisa menampung data talent dan juga agensi karena jumlah atribut data tang ditampilkan tidak berbeda. Pada Card juga terdapat tombol delete dan edit sehingga lebih mudah untuk menghapus atau mengubah suatu data yang spesifik
- **_AddTalent_** Merupakan Jframe untuk memasukan data talent yang akan ditambahkan. JFrame ini akan muncuk juga menekan tombol add ketika berada pada list talent
- **_AddAgency_** Merupakan Jframe untuk memasukan data agensi yang akan ditambahkan. JFrame ini akan muncuk juga menekan tombol add ketika berada pada list agensi
- **_EditTalent_** Merupakan Jframe yang muncul dengan data-data talent yang akan diubah dan pengguna bisa langsung mengubahnya baik pada `textField`, `testArea`, dan juga `comboBox` yang tersedia ditambahkan dengan bagian upload foto
- **_EditAgency_** Merupakan Jframe yang muncul dengan data-data agensi yang akan diubah dan pengguna bisa langsung mengubahnya baik pada `textField` dan `testArea` yang tersedia ditambahkan dengan bagian upload foto

## **Database**
![database Relation](https://github.com/mdaffayusuff/TP2DPBO2023/blob/main/readmeImg/Screenshot%202023-04-12%20201423.png?raw=true)

## **Preview GUI**
- #### Login Page
![secret](https://github.com/mdaffayusuff/TP2DPBO2023/blob/main/readmeImg/Login%20Tak%20terlihat.png?raw=true)

Username dan password yang bisa dipakai hanya yang ada di bawah ini

![notanymore](https://github.com/mdaffayusuff/TP2DPBO2023/blob/main/readmeImg/Login%20terlihat.png?raw=true)

- #### Talent List
![talentl](https://github.com/mdaffayusuff/TP2DPBO2023/blob/main/readmeImg/List%20for%20Talent.png?raw=true)
- #### Agency List
![agencyl](https://github.com/mdaffayusuff/TP2DPBO2023/blob/main/readmeImg/List%20for%20Agency.png?raw=true)
- #### Talent Add
![addt](https://github.com/mdaffayusuff/TP2DPBO2023/blob/main/readmeImg/AddTalent.png?raw=true)
- #### Agency Add
![adda](https://github.com/mdaffayusuff/TP2DPBO2023/blob/main/readmeImg/AddAgency.png?raw=true)
- #### Talent Edit
![editt](https://github.com/mdaffayusuff/TP2DPBO2023/blob/main/readmeImg/EditTalent.png?raw=true)
- #### Agency Edit
![edita](https://github.com/mdaffayusuff/TP2DPBO2023/blob/main/readmeImg/EditAgency.png?raw=true)
- #### Delete
![del](https://github.com/mdaffayusuff/TP2DPBO2023/blob/main/readmeImg/Delete%20Confirmation.png?raw=true)


## Catatan
Ada beberapa kekurangan yang masih bisa dibenahi
- Ketika melakukan edit atau pun add pada list, halaman utama tidak mengrefresh secara otomatis sehungga kita diharuskan untuk meng-refresh manual dengan cara menekan tombol navigasi diatasnya. Hal ini dikarenakan proses crud ada pada frame yang berbeda dengan frame utama yang menampilkan list sehingga refresh otomatis belum bisa dilakukan
- Ukuran dan rasio foto yang digunakan pada list dapat dibenahi karena banyak foto yang ter-stretch sehingga tampilan belum terlalu baik
- Fitur Registrasi yang belum sempat dibuat


