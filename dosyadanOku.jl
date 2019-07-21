# nx3'lük koordinat matrisinin bulunduğu dosya ismini parametre olarak alır.
# Dosyadaki koordinatları döndürür.
#=
function dosyadanOku(dosyaAdi)
  d=readdlm(dosyaAdi,Float64)
  return d
end
=#
using DelimitedFiles
function dosyadanOku(dosyaAdi)
  dosya=readdlm(dosyaAdi)
  koordinatlar=dosya[7:end-1,2:3]
  koordinatlar=convert(Array{Float64,2},koordinatlar)
  return koordinatlar
end
