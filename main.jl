#=
Gezgin Satıcı Probleminin Macar Algoritması ile Çözümü
Burak Yılmaz
16.05.2019
=#

include("dosyadanOku.jl")
include("DOlustur.jl")
include("macar.jl")
include("mesafeHesapla.jl")
include("twoOpt.jl")
include("yazdir.jl")
using DelimitedFiles
function main()
    println()
    println(dosyaAdi)
    println("macar")

    koordinatlar=dosyadanOku(dosyaAdi)
    n,D=DOlustur(koordinatlar)
    atamaVektoru=macar(n,D)
    tekrarSayisi=1000
    zamanToplam=0
    zamanMin=9999
    zamanMax=0
    for i=1:tekrarSayisi
        t1=time()
        atamaVektoru=macar(n,D)
        t2=time()
        zamanFark=t2-t1
        if zamanFark<zamanMin
            zamanMin=zamanFark
        elseif zamanFark>zamanMax
            zamanMax=zamanFark
        end
        zamanToplam=zamanToplam+zamanFark
    end
    yazdir(n,D,atamaVektoru)
    print("ort:    ")
    println(zamanToplam/tekrarSayisi)
    print("min:    ")
    println(zamanMin)
    print("max:    ")
    println(zamanMax)

    #2-opt algoritmasında kullanılacak vektör 'V' olarak isimlendirilmiştir.
    #Kenarların yeri değiştikten sonra mesafe azalmışsa 'kontrol' değişkeni 'true' değerini alır.
    #n: şehir sayısı, D: uzaklık matrisi, V: atama vektörü, z: bilinen en kısa mesafe

    println("2-Opt")
    z=mesafeHesapla(n,D,atamaVektoru)
    zamanToplam=0
    zamanMin=9999
    zamanMax=0
    V=copy(atamaVektoru)
    for i=1:tekrarSayisi
        t1=time()
        z,V=twoOpt(n,D,copy(atamaVektoru),z)
        t2=time()
        zamanFark=t2-t1
        if zamanFark<zamanMin
            zamanMin=zamanFark
        elseif zamanFark>zamanMax
            zamanMax=zamanFark
        end
        zamanToplam=zamanToplam+zamanFark
    end
    yazdir(n,D,V)
    print("ort:    ")
    println(zamanToplam/tekrarSayisi)
    print("min:    ")
    println(zamanMin)
    print("max:    ")
    println(zamanMax)
end
