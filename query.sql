-- Cau 1
SELECT HuongDan.madt, DeTai.tendt
FROM HuongDan INNER JOIN DeTai ON HuongDan.madt = DeTai.madt

GROUP BY HuongDan.madt, DeTai.tendt
HAVING COUNT(HuongDan.madt) > 2

-- Cau 2
SELECT DeTai.madt, DeTai.tendt, DeTai.kinhphi
FROM DeTai
WHERE DeTai.kinhphi = (
	SELECT Max(DeTai.kinhphi)
	FROM DeTai
)

-- Cau 3
SELECT Khoa.tenkhoa, COUNT(Khoa.tenkhoa) As soluongSV
FROM Khoa INNER JOIN SinhVien ON Khoa.makhoa = SinhVien.makhoa
GROUP BY Khoa.tenkhoa