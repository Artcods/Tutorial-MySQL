# DASAR TABLE

- Data biasanya disimpan di dalam tabel di MySQL

- Tiap tabel biasanya menyimpan satu jenis data, misal ketika kita membuat aplikasi toko online, 
  kita akan membuat tabel barang, tabel pelanggan, tabel penjual, dan lain-lain
  
- Sebelum kita bisa memasukkan data ke tabel, 
  kita wajib terlebih dahulu membuat tabelnya terlebih dahulu
  
- Dan tiap tabel yang kita buat, wajib ditentukan kolom-kolom nya, dan tipe data tiap kolom nya

- Kita juga bisa mengubah tabel yang sudah terlanjur dibuat, seperti menambah kolom baru, 
  mengubah kolom yang sudah ada, atau menghapus kolom


1. STORAGE ENGINES

- MySQL memiliki berbagai cara melakukan pengolahan data, 
  hal ini disebut Storage Engines.
- Saat ini, yang biasa dan populer digunakan adalah InnoDB
- Untuk melihat storage engines apa saja yang terdapat di MySQL, 
    kita bisa menggunakan perintah : 
    
                SHOW ENGINES; 


2. MELIHAT TABLE
    
                SHOW TABLES;
    
  
  
3. MEMBUAT TABLE (CREATE TABLE)
      CONTOH :
      
                CREATE TABLE products
                (
                kode    INT,
                nama    VARCHAR(100),
                harga   INT,
                jumlah  INT,
                ) ENGINE = InnoDB


4. MELIHAT STRUKTUR TABLE

                DESCRIBE nama_tabel;
                
                DESC nama_tabel;
                
                SHOW CREATE TABLE nama_tabel;


5. MENGUBAH TABLE
      CONTOH :
              
                ALTER TABLE nama_tabel
                ADD COLUMN nama_column TEXT,
                DROP COLUMN nama,
                RENAME COLUMN nama TO nama_baru,
                MODIFY nama VARCHAR(100) AFTER jumlah,
                MODIFY nama VARCHAR(100) FIRST;
                
   - Mengubah Table Dengan Panggilan :
   
                ALTER TABLE nama_tabel
                
   - Menambahkan Kolom :
   
                ADD COLUMN nama_column TEXT
                
   - Menghapus Kolom :
   
                DROP COLUMN nama    
                
   - MeRENAME Kolom :
   
                RENAME COLUMN nama TO nama_baru
                
   - Modifikasi Posisi Kolom :
   
                MODIFY nama VARCHAR(100) AFTER jumlah,
                MODIFY nama VARCHAR(100) FIRST;
                
                
6. VALUE NULL
  
- Null adalah nilai ketika kita tidak mengisi data ke dalam kolom
- Secara default, saat kita membuat kolom, kolom tersebut bisa bernilai NULL, 
  jika kita tidak ingin menerima nilai NULL, 
  kita bisa menambahkan NOT NULL ketika pembuatan kolom nya
    CONTOH :
                CREATE TABLE products
                (
                kode    INT NOT NULL,
                nama    VARCHAR(100) NOT NULL,
                harga   INT,
                jumlah  INT
                ) ENGINE = InnoDB;
                
     ATAU MENAMBAHKAN DENGAN CARA :
                
                ALTER TABLE nama_tabel
                MODIFY nama VARCHAR(100) NOT NULL;
                
  
7. DEFAULT VALUE

- Saat kita menyimpan data ke dalam tabel, lalu kita hanya menyimpan beberapa kolom (tidak semuanya),
  kolom yang tidak kita beri nilai secara default nilainya adalah NULL
- Jika kita ingin mengubah default value nya, kita bisa menambahkan 
  perintah DEFAULT NILAI ketika pembuatan kolom nya
- Khusus tipe data DATETIME atau TIMESTAMP, jika kita ingin 
  menggunakan default value dengan nilai waktu saat ini, 
  kita bisa gunakan kata kunci : CURRENT_TIMESTAMP
  
        CONTOH :
        
                CREATE TABLE products
                (
                kode    INT NOT NULL,
                nama    VARCHAR(100) NOT NULL,
                harga   INT NOT NULL DEFAULT 0,
                jumlah  INT NOT NULL DEFAULT 0
                ) ENGINE = InnoDB;
                
        CONTOH UNTUK MENAMBAHKAN DEFAULT VALUE :
                
                ALTER TABLE nama_tabel
                MODIFY jumlah INT NOT NULL DEFAULT 0;

                ALTER TABLE nama_tabel
                MODIFY harga INT NOT NULL DEFAULT 0;
  
        CONTOH TIPE DATA DATETIME ATAU TIMESTAMP :
                
                ALTER TABLE nama_tabel
                ADD waktu_dibuat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;
                
                
8. Membuat Ulang Table 
      CONTOH :
                TRUNCATE nama_tabel;
                

9. Menghapus Table 
      CONTOH :
                DROP TABLE nama_tabel;







                
