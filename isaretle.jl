# Atanmış sıfırı olmayan tüm satırları işaretle.
# İşaretlenmiş satırları incele, eğer satırda 0 varsa, sıfırın bulunduğu sütunu işaretle.
# İşaretli sütunları incele, eğer sütunda atanmış sıfır varsa, sıfırın bulunduğu satırı işaretle.
function isaretle(n,C,isaretSatir,isaretSutun)
  atamaVar=false
  for i=1:n
    for j=1:n
      if C[i,j]==-1
        atamaVar=true
      end
    end
    if atamaVar==false
      isaretSatir[i]=1
    end
    atamaVar=false
  end

  #işaretleme işlemlerine başla
  for k=1:n
    #işaretli satırlara bak, eğer sıfır varsa o sütunu işaretle.
    for i=1:n
      if isaretSatir[i]==1
        for j=1:n
          if C[i,j]==-2
            isaretSutun[j]=1
          end
        end
      end
    end
    #işaretli sütunlara bak, eğer atanmış sıfır varsa o satırı işaretle.
    for i=1:n
      if isaretSutun[i]==1
        for j=1:n
          if C[j,i]==-1
            isaretSatir[j]=1
          end
        end
      end
    end
  end
  return isaretSatir,isaretSutun
end
