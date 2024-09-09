CREATE TABLE [PRODI]
(
idprodi int IDENTITY(1,1) PRIMARY KEY,
nmprodi nvarchar(50) NOT NULL,
akreditasi varchar(1) NOT NULL default(''),
thn_berdiri varchar(4) NULL
)

CREATE TABLE [STATUS_AKADEMIK]
(
idstatusaka int IDENTITY(1,1) PRIMARY KEY,
nmstatusaka nvarchar(50) NOT NULL
)

CREATE TABLE [MAHASISWA]
(
idmhs int IDENTITY(1,1) PRIMARY KEY,
npm nvarchar(8) NOT NULL UNIQUE,
nama varchar(50) NOT NULL,
tempat_lhr varchar(50) NULL,
tanggal_lhr date NULL,
sex varchar(50) NOT NULL Default(''),
thn_masuk varchar(4) NOT NULL CHECK(thn_masuk>1999),
idprodi int NOT NULL FOREIGN KEY REFERENCES PRODI (idprodi),
idstatusaka int NOT NULL FOREIGN KEY REFERENCES STATUS_AKADEMIK (idstatusaka)
)