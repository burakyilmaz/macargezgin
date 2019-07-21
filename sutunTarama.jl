# İçinde bir adet sıfır bulunan sütunları bul.
# Atamayı gerçekleştirdikten sonra o satırdaki diğer sıfırları çiz.
function sutunTarama(n,C)
  sutunSifir = 0
  for i=1:n
    sutunSifir = count(iszero,C[:, i]) #sutundaki sıfır sayısını buluyoruz.
    if sutunSifir==1
      konum=findall(x->x==0,C[:,i])
      C[konum[1],i]=-1 #atama yapılan hücreyi -1 yap.
      for j=1:n
        if C[konum[1],j]==0 #atama yapılan satırdaki diğer tüm sıfırları -2 yap.
          C[konum[1],j]=-2
        end
      end
    end
  end
  return C
end
