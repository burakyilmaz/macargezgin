# Bulunan çözümün TSP için uygun olup olmadığını döndürür.
function donguKontrol()
  donguVar=false
  durak=0
  konum=1
  for i=1:n
    sonraki=atamaVektoru[konum]
    konum=sonraki
    durak=durak+1
    if konum==1 && durak!=n
      donguVar=true
      break
    end
  end
  return donguVar
end
