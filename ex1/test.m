data = load("ex1data1.txt");
X = data(:,1); 
y = data(:,2);

X = [ones(m, 1), data(:,1)];

theta = [0;0];

alpha = 0.01;

iterations = 1500;

gradientDescent(X,y,theta,alpha,iterations);