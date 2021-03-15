-- Menghapus Database
DROP DATABASE kasus1;


-- Membuat Database
CREATE DATABASE IF NOT EXISTS kasus1;

USE kasus1;

-- Tabel Pembeli
-- DROP TABLE pembeli;

CREATE TABLE IF NOT EXISTS pembeli(
	nama_beli VARCHAR(30),
	alamat_beli	VARCHAR(25),
	kec_alamat VARCHAR(12),
	kdpos_alamat VARCHAR(6),
	prov_alamat VARCHAR(12),
	kode_beli VARCHAR(8) PRIMARY KEY
);

INSERT INTO pembeli VALUES
('Toko Permata Indah', 'Jalan Mawar No.42', 'Mulyodadi', '55253', 'Yogyakarta', 'BRG001'),
-- ('Toko Buku Belajar Bersama', 'Jalan Melati No.39', 'Lengkong', '40221', 'Bandung', 'BRG002'),
-- ('Toko Intermedia', 'Jalan Asia Afrika No. 17' 'Ngagelrejo', '60245', 'Surabaya','BRG003'),
-- ('Toko Kasih Murah', 'Jalan Teuku Wisnu No. 09','Margajaya', '16116', 'Bogor', 'BRG004'),
-- ('Toko Serba Mahal', 'Jalan Cigantri No.112', 'Mustika Sari', '17157', 'Bekasi', 'BRG005');

-- Tabel Pegawai
-- DROP TABLE pegawai;

-- CREATE TABLE pegawai(
-- 	nama_pegawai VARCHAR(18),
-- 	jbtn_pegawai VARCHAR(15),
-- 	no_pegawai	VARCHAR(20),
-- );
