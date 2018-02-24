% Assignment 2 - ES 615 - NIC - S Deepak Narayanan - 16110142%

% 2 - 5 - 5 - 1 Neural Network - Learning rate of 0.2 % 

% The Schaffer's Function is being approximated by the Neural Network %

clc;
clear all
close all;
x1=-10:0.1:10;
x2=-10:0.1:10;
for i=1:length(x1)
    for j=1:length(x2)
         y(i,j)=(0.5 + ((sin(sqrt(x1(i).^2+x2(j).^2))).^2 - 0.5)./((0.001*(x1(i).^2+x2(j).^2)+1).^2));
    end
end

% Above is initialisation of values for Schaffer Function 

% Here there is implementation of 2 - 5 - 5 - 1 Neural Network 

% Here the inital weights and biases are set to some random value

% The output is initialiased to zero - though after the first iteration
% This will change

w1 = rand(5,2);     
w2 = rand(5,5);
w3 = rand(1,5);
b1 = rand(5,1);
b2 = rand(5,1);
b3 = rand;
output = zeros(length(x1), length(x2));    

% Next few lines of code will contain set of update rules for the Neural Network 

% Learning rate is set to 0.1 
mesh(x1,x2,y);
for iter=1:40
for i=1:length(x1)
    for j=1:length(x2)
        % Calculating the Output for the functional value at (i,j) 
        
        input = [x1(i);x2(j)];
        outputlayer1 = tanh(w1 * input + b1);           % Tansigmoid in L1
        outputlayer2 = tanh(w2 * outputlayer1 + b2);    % Tansigmoid in L2
        output(i,j) = w3*outputlayer2 + b3;             % Linear Function
        e(i,j) = y(i,j) - output(i,j);                  % Error Function
        
       % Backpropagation begninning here 
        w3 = w3 + 0.1*2*e(i,j)*outputlayer2';
        b3 = b3 + 0.1*2*e(i,j);
        
        w2 = w2 + 0.1*2*e(i,j)*diag(1-outputlayer2.^2)*w3'*outputlayer1';
        b2 = b2 + 0.1*2*e(i,j)*diag(1-outputlayer2.^2)*w3';
 
        w1 = w1 + 0.1*2*e(i,j)*diag(1-outputlayer2.^2)*w2*diag(1-outputlayer1.^2)*w3'*input';
        b1 = b1 + 0.1*2*e(i,j)*diag(1-outputlayer2.^2)*w2*diag(1-outputlayer1.^2)*w3';
        % Backpropagation is over
    end
end
% Evolution of the function - Neural Network's result %
mesh(x1,x2,output)      %Video of the Schaffer Function
xlim([-10 10]);
ylim([-10 10]);
zlim([0 1]);
pause(1);
f(iter) = getframe(gcf);    
end


video = VideoWriter('2-5-5-1 Neural Network 16110142_7','Uncompressed AVI');
video.FrameRate = 1;
open(video);
writeVideo(video,f);
close(video);












