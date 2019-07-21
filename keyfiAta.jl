# İçinde bir adet sıfır bulunan satır ya da sütun yoksa
# en az sıfırın bulunduğu satırdaki ilk sıfırı ata,
# o satırdaki ve sütundaki diğer sıfırları çiz.
function keyfiAta(n,C)
  satirSifir=0
  enKucuk=Inf
  for i=1:n
    satirSifir=count(iszero,C[i, :])
    if satirSifir>1 && satirSifir<enKucuk
      enKucuk=satirSifir
    end
  end
  for i=1:n
    if count(iszero,C[i, :])==enKucuk
      konum=findall(x->x==0,C[i,:])
      C[i,konum[1]]=-1
      for j=1:n
        if C[j,konum[1]]==0 #atama yapılan sütundaki diğer tüm sıfırları -2 yap.
          C[j,konum[1]]=-2
        end
        if C[i,j]==0 #atama yapılan satırdaki diğer tüm sıfırları -2 yap.
          C[i,j]=-2
        end
      end
      enKucuk=Inf
    end
  end
  return C
end
