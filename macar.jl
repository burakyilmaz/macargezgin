include("indirge.jl")
include("satirTarama.jl")
include("sutunTarama.jl")
include("keyfiAta.jl")
include("atamaVektoruOlustur.jl")
include("atamaSay.jl")
include("isaretle.jl")
include("cizgiCiz.jl")
include("iyilestir.jl")

function macar(n,D)
  iyiMatris=indirge(D)
  C=copy(iyiMatris)
  cizikSatir=zeros(n)
  cizikSutun=zeros(n)
  isaretSatir=zeros(n)
  isaretSutun=zeros(n)

  while atamaSay(n,C) != n
    while count(iszero,C[:]) != 0 #kopyalanmış matriste sıfırlar bitene kadar işlemler devam eder.
      C=satirTarama(n,C)
      C=sutunTarama(n,C)
      if count(iszero,C[:]) != 0
        C=keyfiAta(n,C)
      end
    end
    if atamaSay(n,C) != n
      isaretSatir,isaretSutun=isaretle(n,C,isaretSatir,isaretSutun)
      C,cizikSatir,cizikSutun=cizgiCiz(n,C,cizikSatir,cizikSutun,isaretSatir,isaretSutun)
      iyiMatris=iyilestir(n,C,cizikSatir,cizikSutun,iyiMatris)
      C=copy(iyiMatris)
      cizikSatir=zeros(n)
      cizikSutun=zeros(n)
      isaretSatir=zeros(n)
      isaretSutun=zeros(n)
    end
  end
  return atamaVektoruOlustur(n,C)
end
