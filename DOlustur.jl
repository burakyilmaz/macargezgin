# Koordinatlardan öklidyen uzaklık matrisini oluşturur.
function DOlustur(koordinatlar)
  n=size(koordinatlar,1)
  D=Array{Float64}(undef, n, n) #şehir sayımız kadar satırdan ve sütundan oluşan kare matris oluşturuyoruz.
  for i=1:n
    for j=1:n
      if i==j #şehirlerin kendine olan uzaklığını Inf yapıyoruz.
        D[i,j] = Inf
      else #iki şehir arasındaki uzaklığı iki nokta arasındaki uzaklık formülü ile buluyoruz.
        x1=koordinatlar[i,1]
        y1=koordinatlar[i,2]
        x2=koordinatlar[j,1]
        y2=koordinatlar[j,2]
        uzaklik=sqrt((x1-x2)^2 + (y1-y2)^2)
        D[i,j]=uzaklik
        D[j,i]=uzaklik
      end
    end
  end
  return n,D
end
