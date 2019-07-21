# Sırasıyla satır ve sütunlardaki minimum değerleri ilgili hücrelerden çıkarır.
function indirge(D)
  satirSayisi=size(D,1)
  satirEnKucuk=minimum(D,dims=2) #satırlardaki en küçük elemanları sütun vektörü şeklinde saklıyoruz.
  D=D.-satirEnKucuk #satırlardaki en küçük elemanları ilgili satırlardan çıkarıyoruz.
  sutunEnKucuk=minimum(D,dims=1) #sütunlardaki en küçük elemanları satır vektörü şeklinde saklıyoruz.
  D=D.-sutunEnKucuk #sütunlardaki en küçük elemanları ilgili sütunlardan çıkarıyoruz.
  return D
end
