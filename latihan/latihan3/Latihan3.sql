--SOAL 1
CREATE TABLE jurusan (
	id bigINT IDENTITY(1,1) PRIMARY KEY,
	nama_jurusan bigint
)

CREATE TABLE Dosen_Wali (
	id bigINT IDENTITY(1,1) PRIMARY KEY,
	NIP bigint,
	nama VARCHAR(255),
	tanggal_lahir DATE,
	alamat VARCHAR(255)
)

CREATE TABLE Mahasiswa (
	id bigINT IDENTITY(1,1) PRIMARY KEY,
	NPM bigint,
	nama VARCHAR(255),
	tanggal_lahir DATE,
	alamat VARCHAR(255),
	no_hp int,
	jurusan_id bigint,    
	dosen_wali_id bigint,  
    FOREIGN KEY (jurusan_id) REFERENCES jurusan(id),
    FOREIGN KEY (dosen_wali_id) REFERENCES dosen_wali(id)
)

--SOAL 2
ALTER TABLE Mahasiswa 
ADD Status BIT;

--SOAL 3 
ALTER TABLE jurusan
ALTER COLUMN nama_jurusan varchar(255);

--SOAL 4
INSERT INTO jurusan (nama_jurusan)
VALUES ('Teknik Informatika'), ('Teknik Mesin'), ('Teknik Pangan'), ('Teknik Lingkungan'), ('Teknik Industri');

--SOAL 5
INSERT INTO Dosen_Wali (NIP, nama, tanggal_lahir, alamat)
VALUES 
(23414234, 'Heksa', '1969-12-19', 'Jl. Cihuy'),
(23414229, 'Rhaka', '1990-2-9', 'Jl. Pacet'),
(23414231, 'Joko', '1984-11-29', 'Jl. Cihuy'),
(23414216, 'Jeki', '1980-5-2', 'Jl. Burung'),
(23414209, 'Dhika', '1975-7-13', 'Jl. Pacet')


--SOAL 6
INSERT INTO Mahasiswa (NPM, nama, tanggal_lahir, alamat, no_hp, jurusan_id, dosen_wali_id)
VALUES 
(233040001, 'Agus', '2004-8-30','Jl. Pacet', 08123213, 3, 1),
(233040002, 'Roni', '2004-2-20','Jl. Burung', 08812312, 4, 2),
(233040003, 'Rojali', '2003-4-23','Jl. Cihuy', 08873864, 2, 1),
(233040004, 'Harits', '2004-10-14','Jl. Pacet', 08386912, 2, 2),
(233040005, 'Fadhil', '2004-10-9','Jl. Pacet', 08724662, 2, 3),
(233040006, 'Kurnia', '2004-5-14','Jl. Pacet', 08727370, 4, 1),
(233040007, 'Alif', '2001-3-24','Jl. Burung', 081235622, 6, 3),
(233040008, 'Jalu', '2004-6-16','Jl. Cihuy', 0812374274, 2, 1),
(233040009, 'Salman', '2002-7-3','Jl. Burung', 081267356, 5, 2),
(233040010, 'Ilham', '2001-1-12','Jl. Cihuy', 088654846, 4, 3),
(233040011, 'Haga', '2004-4-25','Jl. Pacet', 089456828, 6, 4),
(233040012, 'Ody', '2005-9-15','Jl. Burung', 087678425, 5, 3),
(233040013, 'Indra', '2003-2-16','Jl. Cihuy', 084956885, 3, 5),
(233040014, 'Adi', '2004-4-13','Jl. Cihuy', 08485684, 4, 4),
(233040015, 'Gayuh', '2003-5-26','Jl. Burung', 087615476, 2, 2),
(233040016, 'Andini', '2002-3-17','Jl. Pacet', 08348563, 5, 4),
(233040017, 'Raya', '2003-11-13','Jl. Cihuy', 088765459, 3, 5),
(233040018, 'Chandra', '2004-4-12','Jl. Pacet', 089567805, 2, 5),
(233040019, 'Rizky', '2003-2-13','Jl. Burung', 089795656, 5, 4),
(233040020, 'Kevin', '2004-12-4','Jl. Cihuy', 080976807, 2, 5)

--SOAL 7

ALTER TABLE Mahasiswa
DROP CONSTRAINT FK__Mahasiswa__jurus__5535A963;

ALTER TABLE Mahasiswa
ADD CONSTRAINT FK__Mahasiswa__jurus__5535A963 FOREIGN KEY (jurusan_id) REFERENCES jurusan(id) ON DELETE CASCADE;

ALTER TABLE Mahasiswa
DROP CONSTRAINT FK__Mahasiswa__dosen__5629CD9C;

ALTER TABLE Mahasiswa
ADD CONSTRAINT FK__Mahasiswa__dosen__5629CD9C FOREIGN KEY (dosen_wali_id) REFERENCES Dosen_Wali(id) ON DELETE CASCADE;

DELETE FROM Mahasiswa 
WHERE id IN (7,8,9,10,11)

SELECT * FROM Mahasiswa





