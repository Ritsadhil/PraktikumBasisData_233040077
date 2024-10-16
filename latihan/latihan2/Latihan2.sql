--JAWABAN SOAL 1
SELECT * FROM dbo.mahasiswa
WHERE tahun_masuk BETWEEN '2019' AND '2020'

--JAWABAN SOAL 2
SELECT * FROM dbo.mahasiswa
WHERE jurusan = 'Teknik Informatika' AND alamat LIKE 'Jl. Merdeka%'

--JAWABAN SOAL 3
SELECT COUNT(jurusan) AS jumlah_total_mahasiswa_informatika
FROM dbo.mahasiswa
WHERE jurusan = 'Teknik Informatika'

--JAWABAN SOAL 4
SELECT TOP(5) * FROM dbo.dpp_mahasiswa
ORDER BY jumlah_pembayaran DESC

--JAWABAN SOAL 5
SELECT DISTINCT dosen_pengajar FROM dbo.jadwal_mata_kuliah

--JAWABAN SOAL 6
SELECT COUNT(hari) AS mata_kuliah_pada_hari_senin 
FROM dbo.jadwal_mata_kuliah
WHERE hari = 'Senin'

--JAWABAN SOAL 7
SELECT * FROM dbo.jadwal_mata_kuliah
WHERE kode_mata_kuliah IN('TI101', 'SI201', 'TS301')

--JAWABAN SOAL 8
SELECT * FROM dbo.mahasiswa
WHERE jurusan = 'Teknik Informatika' AND alamat LIKE 'JL. Sudirman%' AND tahun_masuk BETWEEN '2018' AND '2020'

--JAWABAN SOAL 9
SELECT * FROM dbo.jadwal_mata_kuliah
WHERE dosen_pengajar LIKE '%ang%'
ORDER BY dosen_pengajar ASC

--JAWABAN SOAL 10
SELECT * FROM dbo.mahasiswa
WHERE mahasiswa_id IN(
	SELECT mahasiswa_id
	FROM dbo.dpp_mahasiswa
	WHERE status_pembayaran = 'Lunas'

)