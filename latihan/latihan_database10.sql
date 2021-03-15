-- Menghapus Database
DROP DATABASE kasus1;


-- Membuat Database
CREATE DATABASE IF NOT EXISTS kasus1;

USE kasus1;

-- Tabel Pembeli
-- DROP TABLE pembeli;

CREATE TABLE IF NOT EXISTS pembeli(
	kode_beli 	VARCHAR(8) PRIMARY KEY,
	nama_beli 	VARCHAR(35),
	alamat_beli	VARCHAR(25),
	kel_beli 	VARCHAR(25),
	kec_beli 	VARCHAR(25),
	kota_beli	VARCHAR(25),
	prov_beli 	VARCHAR(25)
);

INSERT INTO pembeli VALUES
('BRG001', 'Toko Permata Indah', 'Jalan Mawar No.42', 'Mulyodadi', 'Bambanglipuro', 'Yogyakarta', 'Jawa Tengah'),
('BRG002', 'Toko Buku Belajar Bersama', 'Jalan Asia Afrika No. 17', 'Cijagra', 'Lengkong', 'Bandung', 'Jawa Barat'),
('BRG003', 'Toko Intermedia', 'Jalan Cigantri No.112', 'Cimuning', 'Mustika Jaya', 'Bekasi', 'Jawa Barat'),
('BRG004', 'Toko Kasih Murah', 'Jalan Teuku Wisnu No. 09', 'Palasari', 'Cileungsi', 'Bogor', 'Jawa Barat'),
('BRG005', 'Toko Serba Mahal', 'Jalan Melati No.39', 'Ngagelrejo', 'Wonokromo', 'Surabaya', 'Jawa Timur');


-- Tabel Pegawai
-- DROP TABLE pegawai;

CREATE TABLE IF NOT EXISTS pegawai(
	kode_pegawai	VARCHAR(15) PRIMARY KEY,
	nama_pegawai 	VARCHAR(35),
	alamat_pegawai	VARCHAR(25),
	kel_pegawai		VARCHAR(25),
	kec_pegawai		VARCHAR(25),
	kota_pegawai	VARCHAR(25),
	prop_pegawai	VARCHAR(25),
	jbtn_pegawai 	VARCHAR(15)
);

-- -- -- INSERT INTO pegawai VALUES
-- -- -- ()


-- Tabel Barang
-- DROP TABLE barang;
CREATE TABLE IF NOT EXISTS barang(
	 kode_barang 	VARCHAR(8) PRIMARY KEY,
	 nama_barang 	VARCHAR(35),
	 stn_barang 	VARCHAR(25),
	 harga_barang	VARCHAR(25)
);

-- -- -- INSERT INTO pegawai VALUES
-- -- -- ()


-- Tabel Pesan Detail
-- DROP TABLE pesandetail;

CREATE TABLE IF NOT EXISTS pesandetail (
	no_pesan 	VARCHAR(4),
	kode_barang	VARCHAR(4),
	jml_barang	TINYINT,
	PRIMARY KEY (no_pesan, kode_barang),
	
	CONSTRAINT fk_pesandetail_2_barang 
		FOREIGN KEY (kode_barang) 
		REFERENCES barang (kode_barang)
);

-- -- -- INSERT INTO pegawai VALUES
-- -- -- ()


-- Tabel Pesan Header
-- DROP TABLE pesanheader;

CREATE TABLE pesanheader (
	no_pesan			VARCHAR(4),
	tgl_pesan			DATE,
	kode_beli			VARCHAR(4),
	kode_pegawai		VARCHAR(4),
	cttn_terimabarang 	VARCHAR(25),
	cttn_bayarbarang	VARCHAR(25),
	cttn_kirimbon		VARCHAR(25),
	PRIMARY KEY (no_pesan, tgl_pesan, kode_pegawai, kode_beli),

	CONSTRAINT fk_pesanheader_2_pembeli 
		FOREIGN KEY (kode_beli) 
		REFERENCES pembeli (kode_beli),

	CONSTRAINT fk_pesanheader_2_pegawai 
		FOREIGN KEY (kode_pegawai) 
		REFERENCES pegawai (kode_pegawai),

	CONSTRAINT fk_pesanheader_2_pesandetail 
		FOREIGN KEY (no_pesan) 
		REFERENCES pesandetail (no_pesan)
);
