function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

g = 1 ./ (1 .+ (e .^ (0 .- z)));
<<<<<<< HEAD


=======
>>>>>>> 7ddb5f944afdcb21701933e6f36d9797dd067a58

% =============================================================

end
