# İşaretli olmayan satırları ve işaretli sütunları çiz.
function cizgiCiz(n,C,cizikSatir,cizikSutun,isaretSatir,isaretSutun)
  for i=1:n
    if isaretSatir[i]==0
      cizikSatir[i]=1
      C[i,:].=Inf
    end
    if isaretSutun[i]==1
      cizikSutun[i]=1
      C[:,i].=Inf
    end
  end
  return C,cizikSatir,cizikSutun
end
