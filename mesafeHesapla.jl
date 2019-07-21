function mesafeHesapla(n,D,V)
  mesafe=0
  for i=1:n-1
    mesafe=mesafe+D[V[i],V[i+1]]
  end
  mesafe=mesafe+D[V[n],V[1]]
  return mesafe
end
