SELECT nama, kelas, MIN(nilai)FROM
siswa;

SELECT tempatlahir, MIN(nilai)
FROM siswa GROUP BY tempatlahir;

SELECT tempatlahir, MIN(nilai), MAX(nilai)
FROM siswa GROUP BY tempatlahir;

SELECT tempatlahir, MIN(nilai) AS nilai_terendah,
MAX(nilai) AS nilai_tertinggi
FROM siswa 
GROUP BY tempatlahir;

SELECT tempatlahir, COUNT(tempatlahir) AS orang_lahir
FROM siswa
GROUP BY tempatlahir;

SELECT JK, SUM(nilai) AS jumlah_nilai
FROM siswa
GROUP BY JK;

SELECT JK, AVG(nilai) AS rata_rata
FROM siswa
GROUP BY JK;

SELECT siswa.*, pinjambuku.*
FROM siswa
JOIN pinjambuku
ON siswa.nis=pinjambuku.nis;

SELECT siswa.*, pinjambuku.*
FROM siswa
RIGHT JOIN pinjambuku
ON siswa.nis=pinjambuku.nis;

SELECT siswa.*, pinjambuku.*
FROM siswa
LEFT JOIN pinjambuku
ON siswa.nis=pinjambuku.nis;

SELECT siswa.* , pinjambuku. *
FROM siswa
LEFT JOIN pinjambuku
ON
siswa.nis = pinjambuku.nis;

SELECT siswa.* , pinjambuku. *
FROM siswa
LEFT JOIN pinjambuku
ON
siswa.nis = pinjambuku.nis
WHERE
pinjambuku.nis IS NULL;