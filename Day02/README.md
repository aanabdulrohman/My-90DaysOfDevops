# Day02 - User Management & Permissions (The Guard Duty)
- Membuat user di linux dengan `sudo adduser nama_user`
- Berpindah user menggunakan `su - nama_user`
- keluar dari user menggunakan perintah `exit`
- memberikan izin sudo ke user dengan perintah `sudo gpasswd -d nama_user sudo`
- menghilangkan izin sudo dari user tertentu `sudo deluser nama_user sudo `

### Pelajaran yang Didapat
- User yang baru dibuat tanpa izin `sudo` tidak akan bisa melakukan perintah administratif (Is not in the sudoers file).
- **Prinsip Least Privilege:** Selalu berikan hak akses minimum yang dibutuhkan untuk menyelesaikan tugas.

#### Matriks Angka Ajaib (Permissions)
| Angka | Hak Akses | Notasi |
| :--- | :--- | :--- |
| **4** | Read (Baca) | `r--` |
| **2** | Write (Tulis) | `-w-` |
| **1** | Execute (Jalankan) | `--x` |

> **Rumus:** User (Owner) | Group | Others
> Contoh `640` berarti: Owner (4+2=6), Group (4), Others (0).

### Challenge - The Restricted Script 
Disini saya membuat sebuah file di `/home/shared_project/rahasia.txt`, di device saya ada dua user yang pertama bernama `aanabdulrohman` dan yang kedua `devops_intern`, disini saya merubah owner file menjadi `devops_intern` menggunakan perintah `sudo chown devops_intern rahasia.txt` dan memberi batasan agar sesuain dengan rule di bawah dengan perintah `sudo chmod 640 rahasia.txt`

![Rubah owner file](/Day02/image/chown.png "Rubah owner")
lalu setelah itu saya memberi batasan agar:
- Bisa dibaca dan ditulis oleh **owner**
- Hanya bisa dibaca oleh **Group**
- **sama sekali tidak bisa dilihat** oleh user lain

Berikut hasil nya: 

User `aanabdulrohman` tidak bisa akses
![user aan tidak bisa akses](/Day02/image/noaan.png)

User `devops_intern` bisa akses
![user devops_intern bisa akses](/Day02/image/devops_intern.png)

