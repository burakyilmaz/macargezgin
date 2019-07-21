function atamaVektoruOlustur(n,C)
  atamaVektoru=Array{Int64}(undef, n)
  for i=1:n
    atamaVektoru[i]=0
  end
  for i=1:n
    for j=1:n
      if C[i,j]==-1
        atamaVektoru[i]=j
      end
    end
  end
  return atamaVektoru
end
