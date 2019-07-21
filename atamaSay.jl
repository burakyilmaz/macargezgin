# Atama sayısını döndürür.
function atamaSay(n,C)
  atamaSayisi=0
  for i=1:n
    for j=1:n
      if C[i,j]==-1
        atamaSayisi=atamaSayisi+1
      end
    end
  end
  return atamaSayisi
end
