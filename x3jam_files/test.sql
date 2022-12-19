SELECT mhs.nama_mhs, count(ambilmk.kodeMK) as total_mk 
	FROM ambilmk INNER JOIN mhs ON mhs.nim = ambilmk.nim
	WHERE ambilmk.kodeMK IN (SELECT kodeMK from mk)
	GROUP BY mhs.nim;

SELECT mhs.nama_mhs, mk.namaMK, nilai FROM ambilmk
	INNER JOIN mhs ON mhs.nim = ambilmk.nim
	INNER JOIN mk ON mk.kodeMK = ambilmk.kodeMK
	WHERE ambilmk.nilai = (SELECT max(nilai) from ambilmk);
