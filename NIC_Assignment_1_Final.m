clc;
clear all;
close all;

[x1,x2]=meshgrid(-10:0.01:10,-10:0.01:10);
myfunction = @(x1,x2)(0.5 + (sin(sqrt(x1.^2+x2.^2)).^2 - 0.5)./((0.001*(x1.^2+x2.^2)+1).^2));
z = myfunction(x1,x2);
surf(x1, x2, z, 'edgecolor', 'none')
view(0,270)






for i=1:10000
a(i,1) = -10 + 20*rand;
a(i,2) = -10 + 20*rand;
end


for i=1:10000
    a(i,3) = myfunction(a(i,1),a(i,2));
end

a = sortrows(a,3);
gbest(1,1) = a(1,1);
gbest(1,2) = a(1,2);
gbest;

for i=1:10000
    pbest(i,1) = a(i,1);
    pbest(i,2) = a(i,2);
end

weight = 0.8;
bestval = myfunction(gbest(1,1),gbest(1,2));
v = rand(10000,2)*5;

for i=1:10000
    pbest(i,1) = a(i,1);
    pbest(i,2) = a(i,2);
end

c1 = 2;
c2 = 2;

for i=1:1000
    weight = weight*0.99;
    bestval
    for j=1:10000
        v(j,1) = weight*v(j,1) + c1*rand*(pbest(j,1) - a(j,1)) + c2*rand*(gbest(1,1) - a(j,1));
        v(j,2) = weight*v(j,2) + c2*rand*(pbest(j,2) - a(j,2)) + c2*rand*(gbest(1,2) - a(j,2));
        a(j,1) = a(j,1) + v(j,1);
        a(j,2) = a(j,2) + v(j,2);
        if(a(j,1)>10 || a(j,1)<-10)
            a(j,1) = pbest(j,1);
        end
        if(a(j,2)>10 || a(j,2) <-10)
            a(j,2) = pbest(j,2);
        end
        
    end
    a = sortrows(a,3);
    if(myfunction(a(1,1),a(1,2)))<myfunction(gbest(1,1),gbest(1,2))
        gbest(1,1) = a(1,1);
        gbest(1,2) = a(1,2);
        bestval = myfunction(gbest(1,1),gbest(1,2))
    end
    x(i) = i;
    y(i) = myfunction(gbest(1,1),gbest(1,2));
    hold on
    plot3(gbest(1,1),gbest(1,2),bestval,'.r','markersize',10)  
    title({['Movement of Gbest with respect to number of iterations'], ['Position of Gbest: ' num2str(gbest(1,1)) ' , ' num2str(gbest(1,2))], ['Iteration No:' num2str(i)], ['Best functional value =' num2str(bestval)]});
    pause(0.0025)
    hold off;
end
plot(x,y);
title(' Fitness Value vs number of iterations')
xlabel('Number of Iterations')
ylabel('Value evaluated at gbest')






        
        
    

        
    
    




