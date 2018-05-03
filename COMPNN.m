% NEURAL NETWORK FOR COMPARATOR
a = 10* rand(100,3);

for i=1:100
    if(a(i,1)<a(i,2))
        a(i,3) = 1;
    else
        a(i,3) = 0;
    end
end

w = rand(1,2);
b = rand;
for i=1:100
    for j = 1:100
        op(j) = hardlim(w*a(j,1:2)'+b);
        e(j) = a(j,3) - op(j);
        w = w + e(j)*a(j,1:2);
        b = b + e(j);
    end
end
