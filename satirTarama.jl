# İçinde bir adet sıfır bulunan satırları bul.
# Atamayı gerçekleştirdikten sonra o sütundaki diğer sıfırları çiz.
function satirTarama(n,C)
  satirSifir=0
  for i=1:n
    satirSifir=count(iszero,C[i, :]) #satırdaki sıfır sayısını buluyoruz.
    if satirSifir==1
      konum=findall(x->x==0,C[i,:])
      C[i,konum[1]]=-1 #atama yapılan hücreyi -1 yap.
      for j=1:n
        if C[j,konum[1]]==0 #atama yapılan sütundaki diğer tüm sıfırları -2 yap.
          C[j,konum[1]]=-2
        end
      end
    end
  end
  return C
end
