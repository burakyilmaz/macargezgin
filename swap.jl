# T vektöründe i,j ikililerin yerini değiştirir.
function swap(a,b,T)
    gecici=T[b]
    T[b]=T[a]
    T[a]=gecici
    T[a:b]=T[b:-1:a]
    return T
end
