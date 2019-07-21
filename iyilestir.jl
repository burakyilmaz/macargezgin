# Çizilmemiş hücrelerdeki en küçük sayıyı bul, çizilmemiş hücrelerden çıkar
# İki çizginin kesiştiği hücrelere ekle.
function iyilestir(n,C,cizikSatir,cizikSutun,iyiMatris)
  enKucuk=minimum(C[:])
  for i=1:n
    for j=1:n
      if cizikSatir[i]==0 && cizikSutun[j]==0
        iyiMatris[i,j]=iyiMatris[i,j].-enKucuk
      elseif cizikSatir[i]==1 && cizikSutun[j]==1
        iyiMatris[i,j]=iyiMatris[i,j].+enKucuk
      end
    end
  end
  return iyiMatris
end
