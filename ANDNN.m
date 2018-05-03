% NEURAL NETWORK FOR AND
w = rand(1,3);
p = [0,0,0,0;
     0,0,1,0;
     1,0,0,0;
     0,1,0,0;
     1,0,1,0;
     1,1,0,0;
     0,1,1,0;
     1,1,1,1;];
 b = rand;
 for i=1:100
     for j=1:8
         y(j) = hardlim(w*p(j,1:3)'+b);
         e(j) = p(j,4) - y(j);
         w = w + p(j,1:3)*e(j);
         b = b + e(j)
     end
 end
 
         