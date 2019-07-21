#n:şehir sayısı,
#D:uzaklık matrisi,
#V:atama vektörü,
#zmin: bilinen en kısa mesafe
function twoOpt(n,D,V,zmin)
    #=kontrol=false
    Vnew=copy(V)
    #tüm kenarları (i,j ikilileri) dolaşır.
    for i=1:n-1
        for j=i+1:n
            T=swap(i,j,copy(V)) #kenarları yer değiştirir.
            z=mesafeHesapla(n,D,T) #mesafeyi yeniden hesaplar.
            if z<zmin #yeni mesafe bilinen minimum değerden küçükse yeni vektörü ve mesafesini kaydeder.
                kontrol=true
                Vnew=copy(T)
                zmin=z
            end
        end
    end
    #mesafe azalmışsa kontrol değişkeni ile main fonksiyonuna bildirir.
    =#
    kontrol=true
    while(kontrol)
        kontrol=false
        i=0
        z=0
        b=V[n]
        imin=0
        jmin=0
        while i < n-2
            a = b
            i = i+1
            b = V[i]
            Dab = D[a,b]
            j = i+1
            d = V[j]
            while j < n
                c = d
                j = j+1
                d = V[j]
                fark = (D[a,c] - D[c,d]) + D[b,d] - D[a,b];
                if fark < 0
                    z = fark;
                    imin = i;
                    jmin = j;
                end
            end
        end

        if z < 0
            V[imin:jmin-1] = V[jmin-1:-1:imin];
            zmin = zmin + z;
            kontrol=true
        end
    end

    return zmin,V
end
